class DummyService: LoginService {
    func areCredentialsValid(credentials: Credentials, delegate: LoginServiceDelegate) {
        if credentials.password == "1234" {
            delegate.credentialsAreValid()
        } else {
            delegate.credentialsAreNotValid()
        }
    }
}
