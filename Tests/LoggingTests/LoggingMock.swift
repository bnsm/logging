//
//  LoggingMock.swift
//  Logging
//
//  Created by Martin Banas on 12/02/17.
//  Copyright © 2017 Logging Contributors. All rights reserved.
//

import Foundation

@testable import Logging

private enum Severity: String {
    
    case alert
    case critical
    case error
    case warning
    case notice
    case information
    case debug
}

class LoggingMock: Logging {
    
    private(set) var lastLog: String?
    
    func alert(_ closure: @autoclosure () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int) {
        log(.alert, closure: closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    func critical(_ closure: @autoclosure () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int) {
        log(.critical, closure: closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    func error(_ closure: @autoclosure () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int) {
        log(.error, closure: closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    func warning(_ closure: @autoclosure () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int) {
        log(.warning, closure: closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    func notice(_ closure: @autoclosure () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int) {
        log(.notice, closure: closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    func info(_ closure: @autoclosure () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int) {
        log(.information, closure: closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    func debug(_ closure: @autoclosure () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int){
        log(.debug, closure: closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    // MARK: Private
    
    private func log(_ level: Severity, closure: @autoclosure () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int) {

        guard let closureResult = closure() else { return }
        
        let closureString = String(describing: closureResult)
        
        lastLog = "[\(level)] -> \(fileName) \(functionName):\(lineNumber) > " + closureString
    }
    
}
