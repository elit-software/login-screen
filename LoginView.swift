protocol LoginView {
    var credentials: Credentials { get }
    func showUsernameIsEmpty()
    func showPasswordIsEmpty()
}