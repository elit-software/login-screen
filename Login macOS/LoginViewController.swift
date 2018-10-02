import Cocoa

class LoginViewController: NSViewController, NSTextFieldDelegate {

    @IBOutlet var username: NSTextField! { didSet { username.delegate = self } }
    @IBOutlet var password: NSTextField! { didSet { password.delegate = self } }
    @IBOutlet var invalidCredentials: NSTextField!
    @IBOutlet var progressIndicator: NSProgressIndicator!
    @IBOutlet var loginButton: NSButton!

    var presenter: LoginPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        let service = LoginServiceFactory.build()
        presenter = LoginPresenter(view: self, service: service)
    }

    @IBAction func login(_: AnyObject) {
        presenter?.login()
    }

    func controlTextDidChange(_: Notification) {
        username.backgroundColor = NSColor.white
        password.backgroundColor = NSColor.white
        invalidCredentials.isHidden = true
    }
}
