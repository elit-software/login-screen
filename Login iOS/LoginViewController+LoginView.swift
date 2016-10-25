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
        performSegue(withIdentifier: "Main", sender: self)
    }

    func showCredentialsAreNotValid() {
        let message = "Credentials are not valid"
        AlertUtilities.displayAlertWithMessage(message: message,
                                               InViewController: self)
    }

    func showLoadingInterface() {
        loginButton.isHidden = true
        activityIndicator.startAnimating()
    }

    func hideLoadingInterface() {
        loginButton.isHidden = false
        activityIndicator.stopAnimating()
    }
}
