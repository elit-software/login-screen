import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions
        launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        disableAnimationsForTests()
        return true
    }

    func disableAnimationsForTests() {
        if ProcessInfo.processInfo.environment["animations"] == "0" {
            UIView.setAnimationsEnabled(false)
        }
    }

    func application(_ application: UIApplication, handleOpen url: URL) -> Bool {
        if let interApp = buildInterAppViewController(url: url as NSURL) {
            let navigation = window?.rootViewController as? UINavigationController
            let controller = navigation?.topViewController
            controller?.present(interApp, animated: false, completion: nil)
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
