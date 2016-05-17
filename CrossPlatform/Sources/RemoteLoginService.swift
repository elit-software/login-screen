protocol RemoteLoginService: LoginService {
    func get(url url: String, credentials: Credentials, callback: (AnyObject?) -> Void)
}

extension RemoteLoginService {

    var authenticationURL: String {
        return "http://private-c387d-login239.apiary-mock.com/authentication"
    }

    func areCredentialsValid(credentials credentials: Credentials, delegate: LoginServiceDelegate) {
        get(url: authenticationURL, credentials: credentials) { data in
            let token = Token(data: data)
            token.isEmpty ? delegate.credentialsAreNotValid() : delegate.credentialsAreValid()
        }
    }
}
