import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        disableAnimationsForTests()
        return true
    }

    func disableAnimationsForTests() {
        if NSProcessInfo.processInfo().environment["animations"] == "0" {
            UIView.setAnimationsEnabled(false)
        }
    }

    func application(application: UIApplication, handleOpenURL url: NSURL) -> Bool {
        (window?.rootViewController as? ViewController)?.resultLabel.text = url.absoluteString
        return true
    }
}
