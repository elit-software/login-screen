import UIKit

extension UITextField {
    func flashBackgroundWithRed() {
        UIView.animate(withDuration: 0.5, animations: { [unowned self] in
            self.backgroundColor = UIColor.red
        }, completion: { (_) -> Void in
            UIView.animate(withDuration: 0.5, animations: { [unowned self] in
                self.backgroundColor = UIColor.white
            })
        })
    }
}
