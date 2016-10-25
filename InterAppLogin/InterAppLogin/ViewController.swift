import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!

    let application = UIApplication.shared

    @IBAction func login() {
        openURL(url: buildURL())
    }

    func buildURL() -> NSURL {
        return NSURL(string: "Login://"
            + "?"
            + "username=username"
            + "&"
            + "password=1234")!
    }

    func openURL(url: NSURL) {
        application.openURL(url as URL)
    }
}
