import XCTest
@testable import Login

class LoginTests: XCTestCase {
    func testWhenUsernameIsEmptyShowUsernameIsEmpty() {
        let view = SpyLoginView()
        let service = SpyLoginService()
        let presenter = LoginPresenter(view: view, service: service)

        presenter.login()

        XCTAssert(view.showUsernameIsEmptyCalled)
    }

    func testWhenPasswordIsEmptyShowPasswordIsEmpty() {
        let view = SpyLoginView()
        let service = SpyLoginService()
        let presenter = LoginPresenter(view: view, service: service)

        presenter.login()

        XCTAssert(view.showPasswordIsEmptyCalled)
    }

    func testWhenCredentialsAreNotEmptyCallServiceToValidateCredentials() {
        let view = SpyLoginView()
        view.credentials = Credentials(username: "USERNAME", password: "PASSWORD")
        let service = SpyLoginService()
        let presenter = LoginPresenter(view: view, service: service)

        presenter.login()

        XCTAssert(service.areCredentialsValidCalled)
    }

    class SpyLoginView: LoginView {
        var showUsernameIsEmptyCalled = false
        var showPasswordIsEmptyCalled = false

        var credentials = Credentials(username: "", password: "")

        func showUsernameIsEmpty() {
            showUsernameIsEmptyCalled = true
        }

        func showPasswordIsEmpty() {
            showPasswordIsEmptyCalled = true
        }
    }

    class SpyLoginService: LoginService {
        var areCredentialsValidCalled = false

        func areCredentialsValid(credentials: Credentials) {
            areCredentialsValidCalled = true
        }
    }
}
