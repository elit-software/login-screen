@testable import Login

class SpyLoginView: LoginView {
    var showUsernameIsEmptyCalled = false
    var showPasswordIsEmptyCalled = false
    var showCredentialsAreValidCalled = false
    var showCredentialsAreNotValidCalled = false

    var credentials: Credentials

    init(credentials: Credentials) {
        self.credentials = credentials
    }

    func showUsernameIsEmpty() {
        showUsernameIsEmptyCalled = true
    }

    func showPasswordIsEmpty() {
        showPasswordIsEmptyCalled = true
    }

    func showCredentialsAreValid() {
        showCredentialsAreValidCalled = true
    }

    func showCredentialsAreNotValid() {
        showCredentialsAreNotValidCalled = true
    }
}
