import UIKit

class LoginViewController: UIViewController {

    @IBAction func login(sender: AnyObject) {
    }
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var loginButton: UIButton!

    var presenter: LoginPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        let service = LoginServiceFactory.build()
        presenter = LoginPresenter(view: self, service: service)
    }

    @IBAction func login(sender: UIButton) {
        presenter?.login()
    }
}
