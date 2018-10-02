protocol RemoteLoginService: LoginService {
    func get(url: String, credentials: Credentials, callback: @escaping ((Any?) -> Void))
}

extension RemoteLoginService {

    var authenticationURL: String {
        return "http://private-c387d-login239.apiary-mock.com/authentication"
    }

    func areCredentialsValid(credentials: Credentials, delegate: LoginServiceDelegate) {
        get(url: authenticationURL, credentials: credentials) { data in
            guard let token = Token(data: data) else { delegate.credentialsAreNotValid(); return }
            token.isEmpty ? delegate.credentialsAreNotValid() : delegate.credentialsAreValid()
        }
    }
}
