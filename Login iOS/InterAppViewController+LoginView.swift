import UIKit

extension InterAppViewController: LoginView {

    func showUsernameIsEmpty() {
        returnWithMessage("UsernameIsEmpty")
    }

    func showPasswordIsEmpty() {
        returnWithMessage("PasswordIsEmpty")
    }

    func showCredentialsAreValid() {
        returnWithMessage("CredentialsAreValid")
    }

    func showCredentialsAreNotValid() {
        returnWithMessage("CredentialsAreNotValid")
    }

    func showLoadingInterface() { }
    func hideLoadingInterface() { }

    func returnWithMessage(message: String) {
        openURL(buildURL(message))
    }

    func buildURL(message: String) -> NSURL {
        return NSURL(string: "InterAppLogin://"
            + "?"
            + "message=" + message)!
    }

    func openURL(url: NSURL) {
        UIApplication.sharedApplication().openURL(url)
    }
}
