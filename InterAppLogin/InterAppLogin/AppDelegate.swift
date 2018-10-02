import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions
        launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        disableAnimationsForTests()
        return true
    }

    func disableAnimationsForTests() {
        if ProcessInfo.processInfo.environment["animations"] == "0" {
            UIView.setAnimationsEnabled(false)
        }
    }

    func application(_: UIApplication, handleOpen url: URL) -> Bool {
        (window?.rootViewController as? ViewController)?.resultLabel.text = url.absoluteString
        return true
    }
}
