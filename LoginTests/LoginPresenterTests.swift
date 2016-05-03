import XCTest
@testable import Login

class LoginPresenterTests: XCTestCase {

    let service = SpyLoginService()
    let emptyCredentials = Credentials(username: "", password: "")
    let notEmptyCredentials = Credentials(username: "USERNAME", password: "PASSWORD")

    func testWhenUsernameIsEmptyShowUsernameIsEmpty() {
        let view = SpyLoginView(credentials: emptyCredentials)
        let presenter = LoginPresenter(view: view, service: service)

        presenter.login()

        XCTAssert(view.showUsernameIsEmptyCalled)
    }

    func testWhenPasswordIsEmptyShowPasswordIsEmpty() {
        let view = SpyLoginView(credentials: emptyCredentials)
        let presenter = LoginPresenter(view: view, service: service)

        presenter.login()

        XCTAssert(view.showPasswordIsEmptyCalled)
    }

    func testWhenCredentialsAreNotEmptyCallServiceToValidateCredentials() {
        let view = SpyLoginView(credentials: notEmptyCredentials)
        let presenter = LoginPresenter(view: view, service: service)

        presenter.login()

        XCTAssert(service.areCredentialsValidCalled)
    }
}