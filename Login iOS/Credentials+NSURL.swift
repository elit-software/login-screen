import Foundation

extension Credentials {
    init?(url: NSURL) {
        let components = url.absoluteString?.components(separatedBy: "?") ?? [String]()
        if components.count != 2 {
            return nil
        }
        let parameters = components[1]
        let credentials = parameters.components(separatedBy: "&")
        if credentials.count != 2 {
            return nil
        }
        let username = credentials[0]
        if !username.contains("username=") {
            return nil
        }
        let password = credentials[1]
        if !password.contains("password=") {
            return nil
        }
        self.username = username.replacingOccurrences(of: "username=", with: "")
        self.password = password.replacingOccurrences(of: "password=", with: "")
    }
}
