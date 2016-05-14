import Cocoa

extension LoginViewController: LoginView {
    var credentials: Credentials {
        return Credentials(username: username.stringValue, password: password.stringValue)
    }

    func showUsernameIsEmpty() {
        username.backgroundColor = NSColor.redColor()
    }

    func showPasswordIsEmpty() {
        password.backgroundColor = NSColor.redColor()
    }

    func showCredentialsAreValid() {
        performSegueWithIdentifier("Main", sender: self)
    }

    func showCredentialsAreNotValid() {
        invalidCredentials.hidden = false
    }

    func showLoadingInterface() {
    }

    func hideLoadingInterface() {
    }
}
