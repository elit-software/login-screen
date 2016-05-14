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
        loginButton.hidden = true
        activityIndicator.startAnimating()
    }

    func hideLoadingInterface() {
        loginButton.hidden = false
        activityIndicator.stopAnimating()
    }
}
