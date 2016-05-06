import Foundation
@testable import Login

class FakeRemoteLoginService: RemoteLoginService {

    let validCredentials: Bool

    init(validCredentials: Bool) {
        self.validCredentials = validCredentials
    }

    func get(url: String, credentials: Credentials, callback: AnyObject? -> Void) {
        if validCredentials {
            let jsonString = "{\"token\":\"A_TOKEN\"}"
            let data = jsonString.dataUsingEncoding(NSUTF8StringEncoding)
            callback(data)
        } else {
            callback(nil)
        }
    }
}
