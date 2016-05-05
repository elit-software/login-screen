import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!

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

extension LoginViewController: LoginView {

    var credentials: Credentials {
        return Credentials(username: username.text ?? "", password: password.text ?? "")
    }

    func showUsernameIsEmpty() {
        username.flashBackgroundWithRed()
    }

    func showPasswordIsEmpty() {
        password.flashBackgroundWithRed()
    }

    func showCredentialsAreValid() {
        performSegueWithIdentifier("Main", sender: self)
    }

    func showCredentialsAreNotValid() {
        AlertUtilities.displayAlertWithMessage("Credentials are not valid", InViewController: self)
    }

    func showLoadingInterface() {
        
    }
}
