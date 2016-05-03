class LoginPresenter {
    let view: LoginView

    init(view: LoginView) {
        self.view = view
    }

    func login() {
        if view.credentials.username.isEmpty {
            view.showUsernameIsEmpty()
        }
    }
}