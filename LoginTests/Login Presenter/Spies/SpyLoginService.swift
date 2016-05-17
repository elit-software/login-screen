@testable import Login

class SpyLoginService: LoginService {

    var areCredentialsValidCalled = false
    var credentialsAreValid = false

    func areCredentialsValid(credentials credentials: Credentials, delegate: LoginServiceDelegate) {
        areCredentialsValidCalled = true
        credentialsAreValid ? delegate.credentialsAreValid() : delegate.credentialsAreNotValid()
    }
}
