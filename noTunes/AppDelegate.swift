import AppKit

@main
struct NoTunes {
    static func main() {
        // Listen for Apple Music launches and terminate it immediately
        NSWorkspace.shared.notificationCenter.addObserver(
            forName: NSWorkspace.willLaunchApplicationNotification,
            object: nil,
            queue: nil
        ) { note in
            if let app = note.userInfo?[NSWorkspace.applicationUserInfoKey] as? NSRunningApplication,
               app.bundleIdentifier == "com.apple.Music" {
                app.forceTerminate()
            }
        }

        // Park the main thread's RunLoop
        RunLoop.main.run()
    }
}
