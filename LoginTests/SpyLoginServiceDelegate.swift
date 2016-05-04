@testable import Login

class SpyLoginServiceDelegate: LoginServiceDelegate {

    var credentialsAreValidCalled = false
    var credentialsAreNotValidCalled = false

    func credentialsAreValid() {
        credentialsAreValidCalled = true
    }

    func credentialsAreNotValid() {
        credentialsAreNotValidCalled = true
    }
}
