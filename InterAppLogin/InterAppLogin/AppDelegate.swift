import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(application: UIApplication, handleOpenURL url: NSURL) -> Bool {
        (window?.rootViewController as? ViewController)?.resultLabel.text = url.absoluteString
        return true
    }
}
