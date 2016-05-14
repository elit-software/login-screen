import Cocoa

class LoginViewController: NSViewController {
    @IBAction func login(sender: AnyObject) {
        performSegueWithIdentifier("Main", sender: self)
    }
}
