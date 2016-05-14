extension LoginViewController: LoginView {
    var credentials: Credentials {
        return Credentials(username: "username", password: "password")
    }

    func showUsernameIsEmpty() {
    }

    func showPasswordIsEmpty() {
    }

    func showCredentialsAreValid() {
        performSegueWithIdentifier("Main", sender: self)
    }

    func showCredentialsAreNotValid() {
    }

    func showLoadingInterface() {
    }

    func hideLoadingInterface() {
    }
}