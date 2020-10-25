import XCTest
@testable import OFTableViewController

final class OFTableViewControllerTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(OFTableViewController().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
