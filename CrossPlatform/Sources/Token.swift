struct Token {

    let token: String

    var isEmpty: Bool {
        return token.isEmpty
    }
}

extension Token: Codable {
}
