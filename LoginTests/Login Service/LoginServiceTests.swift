@testable import Login
import XCTest

class LoginServiceTests: XCTestCase {

    let emptyCredentials = Credentials(username: "", password: "")
    let delegate = SpyLoginServiceDelegate()

    func testWhenTokenIsEmptyCredentialsAreNotValid() {
        let service = FakeRemoteLoginService(validCredentials: false)

        service.areCredentialsValid(credentials: emptyCredentials, delegate: delegate)

        XCTAssert(delegate.credentialsAreNotValidCalled)
    }

    func testWhenTokenIsNotEmptyCredentialsAreValid() {
        let service = FakeRemoteLoginService(validCredentials: true)

        service.areCredentialsValid(credentials: emptyCredentials, delegate: delegate)

        XCTAssert(delegate.credentialsAreValidCalled)
    }
}
