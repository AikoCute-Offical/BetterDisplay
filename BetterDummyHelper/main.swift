//
//  AppDelegate.swift
//  BetterDummyHelper
//
//  Created by @AikoCute-Offical
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
  @available(macOS, deprecated: 11.00)
  func applicationDidFinishLaunching(_: Notification) {
    let mainBundleID = Bundle.main.bundleIdentifier!.replacingOccurrences(of: "Helper", with: "")

    let bundlePath = Bundle.main.bundlePath as NSString

    guard NSRunningApplication.runningApplications(withBundleIdentifier: mainBundleID).isEmpty else {
      return NSApp.terminate(self)
    }

    let pathComponents = bundlePath.pathComponents
    let path = NSString.path(withComponents: Array(pathComponents[0 ..< (pathComponents.count - 4)]))

    NSWorkspace.shared.launchApplication(path)
    NSApp.terminate(nil)
  }

  func applicationWillTerminate(_: Notification) {}
}

let app = NSApplication.shared
let delegate = AppDelegate()
app.delegate = delegate
app.run()
