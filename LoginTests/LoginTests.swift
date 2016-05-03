import XCTest
@testable import Login

class LoginTests: XCTestCase {
    func testWhenUsernameIsEmptyShowUsernameIsEmpty() {
        let view = SpyLoginView()
        let presenter = LoginPresenter(view: view)

        presenter.login()

        XCTAssert(view.showUsernameIsEmptyCalled)
    }

    class SpyLoginView: LoginView {
        var showUsernameIsEmptyCalled = false

        var credentials: Credentials {
            return Credentials(username: "", password: "")
        }

        func showUsernameIsEmpty() {
            showUsernameIsEmptyCalled = true
        }
    }
}
