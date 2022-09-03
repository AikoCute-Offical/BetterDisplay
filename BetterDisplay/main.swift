//
//  BetterDisplay
//
//  Created by @AikoCute-Offical
//

import Cocoa

let prefs = UserDefaults.standard
var app: AppDelegate!

autoreleasepool { () -> Void in
  let app = NSApplication.shared
  let appDelegate = AppDelegate()
  app.delegate = appDelegate
  app.run()
}
