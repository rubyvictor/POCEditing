//
//  POCEditingChangeTests.swift
//  POCEditingChangeTests
//
//  Created by Victor Lee on 29/10/18.
//  Copyright © 2018 VictorLee. All rights reserved.
//

import XCTest
@testable import POCEditingChange

class POCEditingChangeTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTextFieldChanged() {
        var controllerUnderTest: ViewController!
        
        let textFieldString = "1111 2222 3333 4444"
        
        controllerUnderTest = ViewController()
        controllerUnderTest.
        
        XCTAssertEqual(, shouldChangeCharactersIn: <#T##NSRange#>, replacementString: <#T##String#>), expectedTextField)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
