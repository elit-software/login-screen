@testable import Login

class SpyLoginService: LoginService {
    var areCredentialsValidCalled = false

    func areCredentialsValid(credentials: Credentials) {
        areCredentialsValidCalled = true
    }
}