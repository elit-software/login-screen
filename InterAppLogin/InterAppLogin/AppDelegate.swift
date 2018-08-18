import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions
        launchOptions: [UIApplicationLaunchOptionsKey: Any]? = nil) -> Bool {
        disableAnimationsForTests()
        return true
    }

    func disableAnimationsForTests() {
        if ProcessInfo.processInfo.environment["animations"] == "0" {
            UIView.setAnimationsEnabled(false)
        }
    }

    func application(_ application: UIApplication, handleOpen url: URL) -> Bool {
        (window?.rootViewController as? ViewController)?.resultLabel.text = url.absoluteString
        return true
    }
}
