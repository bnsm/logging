//
//  LoggingTests.swift
//  LoggingTests
//
//  Created by Martin Banas on 12/02/17.
//  Copyright © 2017 Logging Contributors. All rights reserved.
//

import XCTest

class LoggingTests: XCTestCase {
    
    var logger: LoggingMock!
    
    override func setUp() {
        super.setUp()
        
        logger = LoggingMock()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test__default_parameters() {
        
        let closure = "test"
        let functionName = "test__default_parameters"
        let fileName = "LoggingTests"
        let lineNumber = "33"
        
        logger.alert(closure)
        
        let message = logger.lastLog!
        
        XCTAssert(message.contains(closure), "should contain closure string")
        
        XCTAssert(message.contains(functionName), "should contain function name")
        
        XCTAssert(message.contains(fileName), "should contain file name")
        
        XCTAssert(message.contains(lineNumber), "should contain line number")
        
    }
}
