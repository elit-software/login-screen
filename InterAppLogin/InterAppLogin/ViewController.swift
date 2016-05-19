import UIKit

class ViewController: UIViewController {

    let application = UIApplication.sharedApplication()

    @IBAction func login() {
        openURL(buildURL())
    }

    func buildURL() -> NSURL {
        return NSURL(string: "Login://"
            + "?"
            + "username=username"
            + "&"
            + "password=1234")!
    }

    func openURL(url: NSURL) {
        application.openURL(url)
    }
}
