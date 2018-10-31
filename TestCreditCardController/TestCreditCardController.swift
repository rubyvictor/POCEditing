//
//  TestCreditCardController.swift
//  TestCreditCardController
//
//  Created by Victor Lee on 31/10/18.
//  Copyright © 2018 VictorLee. All rights reserved.
//

@testable import POCEditingChange
import XCTest

class TestCreditCardController: XCTestCase {
    var creditCardVC: CreditCardController!
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        super.tearDown()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        creditCardVC = CreditCardController()
        
        let testedString = String(repeating: "", count: creditCardVC.maxNumCharacters)
        let testedResult = creditCardVC.textField(creditCardVC.textField, shouldChangeCharactersIn: NSRange(location: 0, length: 0), replacementString: testedString)
        XCTAssertTrue(testedResult, "The max characters allowed is \(creditCardVC.maxNumCharacters) characters")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
