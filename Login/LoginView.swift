protocol LoginView {
    var credentials: Credentials { get }
    func showUsernameIsEmpty()
    func showPasswordIsEmpty()
    func showCredentialsAreValid()
    func showCredentialsAreNotValid()
    func showLoadingInterface()
    func hideLoadingInterface()
}
