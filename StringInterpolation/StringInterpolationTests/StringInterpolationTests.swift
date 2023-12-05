//
//  StringInterpolationTests.swift
//  StringInterpolationTests
//
//  Created by manjuprashanth s on 30/11/23.
//

import XCTest
import StringInterpolation

final class StringInterpolationTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let userSensitiveIdentifier = 1234
        XCTAssertEqual("user identifier \(userSensitiveIdentifier, privacy: .private)", "user identifier <private>")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
