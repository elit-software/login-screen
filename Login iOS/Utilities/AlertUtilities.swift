import UIKit

class AlertUtilities {
    class func displayAlertWithMessage(message: String,
                                       InViewController viewController: UIViewController) {
        let alert = UIAlertController(title: "Attention", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        viewController.present(alert, animated: true, completion: nil)
    }
}
