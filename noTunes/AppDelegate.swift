import AppKit

@main
struct NoTunes {
    static func main() {
        // 1. Listen for future launches directly on the main RunLoop
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

        // 2. Park the main thread's RunLoop forever (0% CPU until notification arrives)
        RunLoop.main.run()
    }
}
