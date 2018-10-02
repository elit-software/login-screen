import Foundation

extension Token {

    init?(data: Any?) {
        guard let data = data as? Data,
            let token = try? JSONDecoder().decode(Token.self, from: data)
        else { return nil }
        self.token = token.token
    }
}
