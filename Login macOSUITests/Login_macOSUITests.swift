import XCTest

class LoginUITests: XCTestCase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
}
