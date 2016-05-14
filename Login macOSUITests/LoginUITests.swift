import XCTest

class LoginUITests: XCTestCase {

    let application = XCUIApplication()

    var usernameTextField: XCUIElement?
    var passwordTextField: XCUIElement?
    var loginButton: XCUIElement?

    private var applicationLaunched = false

    override func setUp() {
        super.setUp()
        application.launch()

        usernameTextField = application.textFields["username"]
        passwordTextField = application.textFields["password"]
        loginButton = application.buttons["login"]
    }

    private func launchApp() {
        if !applicationLaunched {
            applicationLaunched = true
            continueAfterFailure = false
            application.launchEnvironment = ["animations": "0"]
            application.launch()
            sleep(1)
        }
    }

    func testLogin() {
        insertText("username", inTextField: usernameTextField)
        insertText("password", inTextField: passwordTextField)
        loginButton?.click()

        sleep(1)

        let label = application.staticTexts.elementMatchingType(.Any, identifier: "label")
        XCTAssertEqual("42", label.value as? String)
    }

    func insertText(text: String, inTextField textField: XCUIElement?) {
        textField?.click()
        textField?.typeText(text)
    }
}
