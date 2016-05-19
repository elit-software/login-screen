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
        return true
    }
}
