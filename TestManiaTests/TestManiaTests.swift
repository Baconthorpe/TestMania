//
//  TestManiaTests.swift
//  TestManiaTests
//
//  Created by Ezekiel Abuhoff on 4/19/16.
//  Copyright © 2016 Ezekiel Abuhoff. All rights reserved.
//

import XCTest
@testable import TestMania

class TestManiaTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGoodBehavior() {
        let vc = ViewController()
        vc.goodBehavior()
        XCTAssert(vc.everythingIsAwesome)
    }
    
    func testBadBehavior() {
        let vc = ViewController()
        vc.badBehavior()
        XCTAssert(!vc.everythingIsAwesome)
    }
    
    func testGoodThenBadBehavior() {
        let vc = ViewController()
        vc.goodBehavior()
        XCTAssert(vc.everythingIsAwesome)
        vc.badBehavior()
        XCTAssert(!vc.everythingIsAwesome)
    }
}
