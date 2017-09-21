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

    func test_default_parameters() {
    
        let closure = "test"
        let functionName = "test_default_parameters"
        let fileName = "LoggingTests"
        let lineNumber = "28"
        
        logger.alert(closure)
        
        let message = logger.lastLog!
        
        XCTAssertTrue(message.contains(closure), "should contain closure string")
        
        XCTAssertTrue(message.contains(functionName), "should contain function name")
        
        XCTAssertTrue(message.contains(fileName), "should contain file name")
        
        XCTAssertTrue(message.contains(lineNumber), "should contain line number")
    }
}
