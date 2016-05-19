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
        if let interApp = buildInterAppViewController(url) {
            let navigation = window?.rootViewController as? UINavigationController
            let controller = navigation?.topViewController
            controller?.presentViewController(interApp, animated: false, completion: nil)
            return true
        } else {
            return false
        }
    }

    func buildInterAppViewController(url: NSURL) -> InterAppViewController? {
        if let credentials = Credentials(url: url) {
            let interAppViewController = InterAppViewController()
            interAppViewController.credentials = credentials
            return interAppViewController
        } else {
            return nil
        }
    }
}
