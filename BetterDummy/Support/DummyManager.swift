//
//  BetterDummy
//
//  Created by @AikoCute-Offical
//

import Foundation
import os.log

class DummyManager {
  struct DefinedDummy {
    var dummy: Dummy
    var definitionId: Int?
  }

  static var definedDummies: [Int: DefinedDummy] = [:]
  static var dummyCounter: Int = 0 // This is an ever increasing temporary number, does not reflect the actual number of dummies.
  static var sleepTempVirtualDisplay: CGVirtualDisplay?
  static var dummyDefinitions: [Int: DummyDefinition] = [:]

  static func createDummyByDefinitionId(_ dummyDefinitionId: Int, isPortrait: Bool = false, serialNum: UInt32 = 0, doConnect: Bool = true) -> Int? {
    if let dummyDefinition = self.dummyDefinitions[dummyDefinitionId] {
      return self.createDummy(dummyDefinition, dummyDefinitionId: dummyDefinitionId, isPortrait: isPortrait, serialNum: serialNum, doConnect: doConnect)
    }
    return nil
  }

  static func createDummy(_ dummyDefinition: DummyDefinition, dummyDefinitionId: Int? = nil, isPortrait _: Bool = false, serialNum: UInt32 = 0, doConnect: Bool = true) -> Int {
    let dummy = Dummy(dummyDefinition: dummyDefinition, serialNum: serialNum, doConnect: doConnect)
    self.dummyCounter += 1
    self.definedDummies[self.dummyCounter] = DefinedDummy(dummy: dummy, definitionId: dummyDefinitionId)
    return self.dummyCounter
  }

  static func getDummies() -> [Dummy] {
    var dummies: [Dummy] = []
    for definedDummy in self.definedDummies.values {
      dummies.append(definedDummy.dummy)
    }
    return dummies
  }

  static func discardDummyByNumber(_ number: Int) {
    self.definedDummies[number] = nil
  }

  static func discardAllDummies() {
    self.definedDummies = [:]
    self.dummyCounter = 0
  }

  static func getDummyByNumber(_ number: Int) -> Dummy? {
    self.definedDummies[number]?.dummy
  }

  static func getDefinitionIdByNumber(_ number: Int) -> Int? {
    self.definedDummies[number]?.definitionId
  }

  static func getNumOfDummies() -> Int {
    self.definedDummies.count
  }

  static func connectDisconnectAssociatedDummies() {
    for dummy in self.getDummies() {
      if dummy.hasAssociatedDisplay() {
        if DisplayManager.getDisplayByPrefsId(dummy.associatedDisplayPrefsId) != nil {
          if !dummy.isConnected {
            os_log("Connecting associated dummy %{public}@ for display %{public}@", type: .info, dummy.getName(), dummy.associatedDisplayPrefsId)
            _ = dummy.connect()
          }
        } else {
          if dummy.isConnected {
            os_log("Disconnecting associated dummy %{public}@ for lack of display %{public}@", type: .info, dummy.getName(), dummy.associatedDisplayPrefsId)
            dummy.disconnect()
          }
        }
      }
    }
  }

  static func getDefinedDummyByDisplayId(_ displayID: CGDirectDisplayID) -> DefinedDummy? {
    self.definedDummies.values.first { $0.dummy.displayIdentifier == displayID }
  }

  static func getDummyByDisplayId(_ displayID: CGDirectDisplayID) -> Dummy? {
    self.getDefinedDummyByDisplayId(displayID)?.dummy
  }

  static func updateDummyDefinitions() {
    let refreshRates: [Double] = [60] // [24, 25, 30, 48, 50, 60, 90, 120] -- only 60Hz seems to be useful in practice
    self.dummyDefinitions = [
      10: DummyDefinition(16, 9, 2, refreshRates, "16:9 (HD/4K/5K/6K)", false),
      20: DummyDefinition(16, 10, 2, refreshRates, "16:10 (W*XGA)", false),
      30: DummyDefinition(16, 12, 2, refreshRates, "4:3 (VGA, iPad)", false),
      40: DummyDefinition(256, 135, 2, refreshRates, "17:9 (4K-DCI)", true),
      50: DummyDefinition(64, 27, 2, refreshRates, "21.3:9 (UW-HD/4K/5K)", false),
      60: DummyDefinition(43, 18, 2, refreshRates, "21.5:9 (UW-QHD)", false),
      70: DummyDefinition(24, 10, 1, refreshRates, "24:10 (UW-QHD+)", false),
      80: DummyDefinition(32, 10, 1, refreshRates, "32:10 (D-W*XGA)", false),
      90: DummyDefinition(32, 9, 2, refreshRates, "32:9 (D-HD/QHD)", true),
      100: DummyDefinition(20, 20, 2, refreshRates, "1:1 (Square)", true),
      110: DummyDefinition(9, 16, 2, refreshRates, "9:16 (HD/4K/5K/6K - Portrait)", false),
      120: DummyDefinition(10, 16, 2, refreshRates, "10:16 (W*XGA - Portrait)", false),
      130: DummyDefinition(12, 16, 2, refreshRates, "12:16 (VGA - Portrait)", false),
      140: DummyDefinition(135, 256, 2, refreshRates, "9:17 (4K-DCI - Portrait)", true),
      210: DummyDefinition(15, 10, 2, refreshRates, "3:2 (Photography)", false),
      220: DummyDefinition(15, 12, 2, refreshRates, "5:4 (Photography)", true),
      350: DummyDefinition(152, 100, 1, refreshRates, "15.2:10 (iPad Mini 2021)", false),
      360: DummyDefinition(66, 41, 2, refreshRates, "23:16 (iPad Air 2020)", false),
      370: DummyDefinition(199, 139, 2, refreshRates, "14.3:10 (iPad Pro 11\")", false),
    ]
    for definedDummy in self.definedDummies.values {
      if let definitionId = definedDummy.definitionId, let dummyDefinition = self.dummyDefinitions[definitionId] {
        definedDummy.dummy.dummyDefinition = dummyDefinition
      }
      if definedDummy.dummy.isConnected {
        definedDummy.dummy.disconnect()
        _ = definedDummy.dummy.connect()
      }
    }
  }

  static func restoreDummiesFromPrefs() {
    os_log("Restoring dummies.", type: .info)
    guard prefs.integer(forKey: "numOfDummyDisplays") > 0 else {
      return
    }
    for i in 1 ... prefs.integer(forKey: PrefKey.numOfDummyDisplays.rawValue) where prefs.object(forKey: "\(PrefKey.display.rawValue)\(i)") != nil {
      if let number = DummyManager.createDummyByDefinitionId(prefs.integer(forKey: "\(PrefKey.display.rawValue)\(i)"), serialNum: UInt32(prefs.integer(forKey: "\(PrefKey.serial.rawValue)\(i)")), doConnect: false) {
        if let dummy = DummyManager.getDummyByNumber(number) {
          dummy.associatedDisplayPrefsId = prefs.string(forKey: "\(PrefKey.associatedDisplayPrefsId.rawValue)\(i)") ?? ""
          dummy.associatedDisplayName = prefs.string(forKey: "\(PrefKey.associatedDisplayName.rawValue)\(i)") ?? ""
          if prefs.bool(forKey: "\(PrefKey.isConnected.rawValue)\(i)") {
            _ = dummy.connect()
          }
        }
      }
    }
    app.menu.populateAppMenu()
  }

  static func storeDummiesToPrefs() {
    os_log("Storing preferences.", type: .info)
    prefs.set(DummyManager.getNumOfDummies(), forKey: PrefKey.numOfDummyDisplays.rawValue)
    guard DummyManager.getNumOfDummies() > 0 else {
      return
    }
    var i = 1
    for key in DummyManager.definedDummies.keys.sorted(by: <) {
      if let definedDummy = DummyManager.definedDummies[key] {
        prefs.set(definedDummy.definitionId, forKey: "\(PrefKey.display.rawValue)\(i)")
        prefs.set(definedDummy.dummy.serialNum, forKey: "\(PrefKey.serial.rawValue)\(i)")
        prefs.set(definedDummy.dummy.isConnected, forKey: "\(PrefKey.isConnected.rawValue)\(i)")
        prefs.set(definedDummy.dummy.associatedDisplayPrefsId, forKey: "\(PrefKey.associatedDisplayPrefsId.rawValue)\(i)")
        prefs.set(definedDummy.dummy.associatedDisplayName, forKey: "\(PrefKey.associatedDisplayName.rawValue)\(i)")
        i += 1
      }
    }
  }
}
