@testable import Login

class SpyLoginService: LoginService {
    var areCredentialsValidCalled = false

    func areCredentialsValid(credentials: Credentials, delegate: LoginServiceDelegate) {
        areCredentialsValidCalled = true
        delegate.credentialsAreValid()
    }
}