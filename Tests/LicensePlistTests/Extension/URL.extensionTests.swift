import APIKit
import Foundation
@testable import LicensePlistCore
import XCTest

class URLExtensionTests: XCTestCase {
    func testDownloadContent() {
        let url = URL(string: "https://raw.githubusercontent.com/mono0926/LicensePlist/master/LICENSE")!
        XCTAssertTrue(try! url.lp.download().resultSync().get().hasPrefix("MIT License"))
    }

    func testFileURL() throws {
        let url = URL(string: "/github.com/mono0926/LicensePlist")!
        XCTAssertEqual(url.lp.fileURL.absoluteString, "file:///github.com/mono0926/LicensePlist")
    }
}
