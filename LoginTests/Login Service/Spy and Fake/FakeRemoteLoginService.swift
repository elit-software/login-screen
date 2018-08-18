import Foundation
@testable import Login

class FakeRemoteLoginService: RemoteLoginService {

    let validCredentials: Bool

    init(validCredentials: Bool) {
        self.validCredentials = validCredentials
    }

    func get(url _: String, credentials _: Credentials, callback: @escaping ((Any?) -> Void)) {
        if validCredentials {
            let jsonString = "{\"token\":\"A_TOKEN\"}"
            let data = jsonString.data(using: String.Encoding.utf8)
            callback(data)
        } else {
            callback(nil)
        }
    }
}
