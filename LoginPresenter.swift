class LoginPresenter: LoginServiceDelegate {
    let view: LoginView
    let service: LoginService

    init(view: LoginView, service: LoginService) {
        self.view = view
        self.service = service
    }

    func login() {
        let credentials = view.credentials

        if credentials.username.isEmpty {
            view.showUsernameIsEmpty()
        }

        if credentials.password.isEmpty {
            view.showPasswordIsEmpty()
        }

        if credentials.areValid {
            service.areCredentialsValid(credentials, delegate: self)
        }
    }

    func credentialsAreValid() {
        view.showCredentialsAreValid()
    }
}