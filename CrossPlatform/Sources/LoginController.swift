class LoginController: LoginView {

    let username: String
    let password: String

    init(username: String, password: String) {
        self.username = username
        self.password = password
    }

    func login() {
        let presenter = LoginPresenter(view: self, service: DummyService())
        presenter.login()
    }

    var credentials: Credentials {
        return Credentials(username: username, password: password)
    }

    func showUsernameIsEmpty() {
        print("Username Is Empty")
    }

    func showPasswordIsEmpty() {
        print("Password Is Empty")
    }

    func showCredentialsAreValid() {
        print("Credentials Are Valid")
        let controller = MainController()
        controller.display()
    }

    func showCredentialsAreNotValid() {
        print("Credentials Are Not Valid")
    }

    func showLoadingInterface() {
        print("Loading")
    }

    func hideLoadingInterface() {
        print("Loading Complete")
    }
}
