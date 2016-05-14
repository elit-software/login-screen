import Cocoa

class LoginViewController: NSViewController, NSTextFieldDelegate {

    @IBOutlet weak var username: NSTextField! { didSet { username.delegate = self } }
    @IBOutlet weak var password: NSTextField! { didSet { password.delegate = self } }
    @IBOutlet weak var invalidCredentials: NSTextField!
    @IBOutlet weak var progressIndicator: NSProgressIndicator!
    @IBOutlet weak var loginButton: NSButton!
    
    var presenter: LoginPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        let service = LoginServiceFactory.build()
        presenter = LoginPresenter(view: self, service: service)
    }

    @IBAction func login(sender: AnyObject) {
        presenter?.login()
    }

    override func controlTextDidChange(obj: NSNotification) {
        username.backgroundColor = NSColor.whiteColor()
        password.backgroundColor = NSColor.whiteColor()
        invalidCredentials.hidden = true
    }
}
