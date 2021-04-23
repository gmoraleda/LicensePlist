import APIKit
import Foundation
@testable import LicensePlistCore
import XCTest

class ResultOperatoinTests: XCTestCase {
    func testBlocking() {
        let operation = ResultOperation<String, NSError> { _ in
            Result.success("hello")
        }
        XCTAssertEqual(try! operation.resultSync().get(), "hello")
    }
}
