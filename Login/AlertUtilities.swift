import UIKit

class AlertUtilities {
    class func displayAlertWithMessage(message: String, InViewController viewController: UIViewController) {
        let alert = UIAlertController(title: "Attention", message: message, preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: nil))
        viewController.presentViewController(alert, animated: true, completion: nil)
    }
}
