class LoginServiceFactory {
    class func build() -> LoginService {
        return AlamofireLoginService()
    }
}
