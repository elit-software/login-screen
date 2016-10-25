import UIKit

extension InterAppViewController: LoginView {

    func showUsernameIsEmpty() {
        returnWithMessage(message: "UsernameIsEmpty")
    }

    func showPasswordIsEmpty() {
        returnWithMessage(message: "PasswordIsEmpty")
    }

    func showCredentialsAreValid() {
        returnWithMessage(message: "CredentialsAreValid")
    }

    func showCredentialsAreNotValid() {
        returnWithMessage(message: "CredentialsAreNotValid")
    }

    func showLoadingInterface() { }
    func hideLoadingInterface() { }

    func returnWithMessage(message: String) {
        openURL(url: buildURL(message: message))
        dismiss(animated: false, completion: nil)
    }

    func buildURL(message: String) -> NSURL {
        return NSURL(string: "InterAppLogin://"
            + "?"
            + "message=" + message)!
    }

    func openURL(url: NSURL) {
        UIApplication.shared.openURL(url as URL)
    }
}
