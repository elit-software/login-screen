struct Token {
    let token: String

    init(token: AnyObject?) {
        self.token = ""
    }

    var isEmpty: Bool {
        return token.isEmpty
    }
}
