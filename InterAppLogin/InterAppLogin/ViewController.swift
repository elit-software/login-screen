import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!

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
