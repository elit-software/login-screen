protocol LoginService {
    func areCredentialsValid(credentials credentials: Credentials, delegate: LoginServiceDelegate)
}
