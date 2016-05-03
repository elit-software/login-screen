protocol LoginService {
    func areCredentialsValid(credentials: Credentials, delegate: LoginServiceDelegate)
}