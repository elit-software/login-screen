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
        insertText(text: "username", inTextField: usernameTextField)
        insertText(text: "password", inTextField: passwordTextField)
        loginButton?.click()

        waitForElement(element: "label")

        let label = application.staticTexts.element(matching: .any, identifier: "label")
        XCTAssertEqual("42", label.value as? String)
    }

    func insertText(text: String, inTextField textField: XCUIElement?) {
        textField?.click()
        textField?.typeText(text)
    }

    func waitForElement(element: String, WithTimeOut timeout: Double = 60.0) {
        var elapsed = 0.0
        while elapsed < timeout {
            if application.staticTexts.element(matching: .any, identifier: element).value != nil {
                break
            }
            elapsed += 1.0
            sleep(1)
        }
    }
}
