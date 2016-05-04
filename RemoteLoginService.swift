import Foundation

protocol RemoteLoginService: LoginService {
    func get(url: String, credentials: Credentials, callback: NSData? -> Void)
}

extension RemoteLoginService {

    var authenticationURL: String {
        return "http://private-c387d-login239.apiary-mock.com/authentication"
    }

    func areCredentialsValid(credentials: Credentials, delegate: LoginServiceDelegate) {
        get(authenticationURL, credentials: credentials) { data in
            let token = Token(data: data)
            token.isEmpty ? delegate.credentialsAreNotValid() : delegate.credentialsAreValid()
        }
    }
}
