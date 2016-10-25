import XCTest

class InterAppLoginUITests: XCTestCase {

    let application = XCUIApplication()

    var loginButton: XCUIElement?

    private var applicationLaunched = false

    override func setUp() {
        super.setUp()
        application.launch()
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
        loginButton?.tap()

        waitForElement(element: "result")

        let result = application.staticTexts.element(matching: .any, identifier: "result")
        XCTAssertEqual("InterAppLogin://?message=CredentialsAreValid", result.label)
    }

    func waitForElement(element: String, WithTimeOut timeout: Double = 60.0) {
        var elapsed = 0.0
        while elapsed < timeout {
            if application.staticTexts.element(matching: .any, identifier: element).exists {
                break
            }
            elapsed += 1.0
            sleep(1)
        }
    }
}
