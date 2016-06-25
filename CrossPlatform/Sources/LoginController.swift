class LoginController {

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
}
