struct Token: Codable {

    let token: String

    var isEmpty: Bool {
        return token.isEmpty
    }
}
