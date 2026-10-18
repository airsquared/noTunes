//
//  AppDelegate.swift
//  noTunes
//
//  Created by Tom Taylor on 04/01/2017.
//  Copyright © 2017 Twisted Digital Ltd. All rights reserved.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    private static let appDelegate = AppDelegate()

    static func main() {
        let application = NSApplication.shared
        application.delegate = appDelegate
        application.run()
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        appIsLaunched()
        createListener()
    }

    func createListener() {
        let workspaceNotificationCenter = NSWorkspace.shared.notificationCenter
        workspaceNotificationCenter.addObserver(self, selector: #selector(appWillLaunch(note:)), name: NSWorkspace.willLaunchApplicationNotification, object: nil)
    }

    func appIsLaunched() {
        for runningApp in NSWorkspace.shared.runningApplications {
            guard runningApp.activationPolicy == .regular,
                  let bundleIdentifier = runningApp.bundleIdentifier else {
                continue
            }

            if bundleIdentifier == "com.apple.iTunes" || bundleIdentifier == "com.apple.Music" {
                runningApp.forceTerminate()
            }
        }
    }

    @objc func appWillLaunch(note: Notification) {
        guard let app = note.userInfo?[NSWorkspace.applicationUserInfoKey] as? NSRunningApplication,
              let bundleIdentifier = app.bundleIdentifier,
              bundleIdentifier == "com.apple.Music" || bundleIdentifier == "com.apple.iTunes" else {
            return
        }

        app.forceTerminate()
    }

}
