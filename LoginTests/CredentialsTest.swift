import XCTest
@testable import Login

class CredentialsTest: XCTestCase {   
    func testExample() {
        let url = NSURL(string: "Login://"
            + "?"
            + "username=USERNAME"
            + "&"
            + "password=1234")!

        let credentials = Credentials(url: url)!

        XCTAssertEqual("USERNAME", credentials.username)
        XCTAssertEqual("1234", credentials.password)
    }
}
