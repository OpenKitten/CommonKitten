import XCTest
@testable import CommonKitten

class CommonKittenTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(CommonKitten().text, "Hello, World!")
    }


    static var allTests : [(String, (CommonKittenTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
