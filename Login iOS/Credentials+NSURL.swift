import Foundation

extension Credentials {
    init?(url: NSURL) {
        let components = url.absoluteString.componentsSeparatedByString("?")
        if components.count != 2 {
            return nil
        }
        let parameters = components[1]
        let credentials = parameters.componentsSeparatedByString("&")
        if credentials.count != 2 {
            return nil
        }
        let username = credentials[0]
        if !username.containsString("username=") {
            return nil
        }
        let password = credentials[1]
        if !password.containsString("password=") {
            return nil
        }
        self.username = username.stringByReplacingOccurrencesOfString("username=", withString: "")
        self.password = password.stringByReplacingOccurrencesOfString("password=", withString: "")
    }
}
