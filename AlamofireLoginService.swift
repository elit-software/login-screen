import Alamofire

class AlamofireLoginService: RemoteLoginService {

    func get(url: String, credentials: Credentials, callback: AnyObject? -> Void) {
        let parameters = [
            "username": credentials.username,
            "password": credentials.password
        ]

        Alamofire.request(.POST, url, parameters: parameters, encoding: .JSON)
            .validate()
            .responseJSON { callback($0.data) }
    }
}
