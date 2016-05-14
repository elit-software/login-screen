import Cocoa

class LoginViewController: NSViewController {

    var presenter: LoginPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        let service = LoginServiceFactory.build()
        presenter = LoginPresenter(view: self, service: service)
    }
    
    @IBAction func login(sender: AnyObject) {
        presenter?.login()
    }
}
