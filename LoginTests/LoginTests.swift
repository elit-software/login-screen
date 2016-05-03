import XCTest
@testable import Login

class LoginTests: XCTestCase {
    func testWhenUsernameIsEmptyShowUsernameIsEmpty() {
        let view = SpyLoginView()
        let presenter = LoginPresenter(view: view)

        presenter.login()

        XCTAssert(view.showUsernameIsEmptyCalled)
    }

    func testWhenPasswordIsEmptyShowPasswordIsEmpty() {
        let view = SpyLoginView()
        let presenter = LoginPresenter(view: view)

        presenter.login()

        XCTAssert(view.showPasswordIsEmptyCalled)
    }

    class SpyLoginView: LoginView {
        var showUsernameIsEmptyCalled = false
        var showPasswordIsEmptyCalled = false

        var credentials: Credentials {
            return Credentials(username: "", password: "")
        }

        func showUsernameIsEmpty() {
            showUsernameIsEmptyCalled = true
        }

        func showPasswordIsEmpty() {
            showPasswordIsEmptyCalled = true
        }
    }
}
