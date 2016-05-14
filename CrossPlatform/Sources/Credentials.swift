struct Credentials {
    let username: String
    let password: String
}

extension Credentials {
    var areValid: Bool {
        return !username.isEmpty && !password.isEmpty
    }
}
