import UIKit

class ViewController: UIViewController, LoginView {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!

    var presenter: LoginPresenter?

    var credentials: Credentials {
        return Credentials(username: username.text ?? "", password: password.text ?? "")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let service = LoginServiceFactory.build()
        presenter = LoginPresenter(view: self, service: service)
    }

    @IBAction func login(sender: UIButton) {
        presenter?.login()
    }

    func showUsernameIsEmpty() {

    }

    func showPasswordIsEmpty() {

    }

    func showCredentialsAreValid() {

    }

    func showCredentialsAreNotValid() {

    }
}
