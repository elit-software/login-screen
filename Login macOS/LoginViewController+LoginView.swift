import Cocoa

extension LoginViewController: LoginView {
    var credentials: Credentials {
        return Credentials(username: username.stringValue, password: password.stringValue)
    }

    func showUsernameIsEmpty() {
        username.backgroundColor = NSColor.red
    }

    func showPasswordIsEmpty() {
        password.backgroundColor = NSColor.red
    }

    func showCredentialsAreValid() {
        performSegue(withIdentifier: NSStoryboardSegue.Identifier("Main"), sender: self)
    }

    func showCredentialsAreNotValid() {
        invalidCredentials.isHidden = false
    }

    func showLoadingInterface() {
        progressIndicator.startAnimation(self)
        progressIndicator.isHidden = false
        loginButton.isHidden = true
    }

    func hideLoadingInterface() {
        progressIndicator.stopAnimation(self)
        progressIndicator.isHidden = true
        loginButton.isHidden = false
    }
}
