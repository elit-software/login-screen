import UIKit

extension UITextField {
    func flashBackgroundWithRed() {
        UIView.animateWithDuration(0.5, animations: { [unowned self] in
            self.backgroundColor = UIColor.redColor()
        }) { (_) -> Void in
            UIView.animateWithDuration(0.5, animations: { [unowned self] in
                self.backgroundColor = UIColor.whiteColor()
                })
        }
    }
}
