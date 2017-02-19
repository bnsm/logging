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
    
    case Alert
    case Critical
    case Error
    case Warning
    case Notice
    case Information
    case Debug
}

class LoggingMock: Logging {
    
    fileprivate(set) var lastLog: String?
    
    func alert(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int) {
        log(.Alert, closure: closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    func critical(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int) {
        log(.Critical, closure: closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    func error(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int) {
        log(.Error, closure: closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    func warning(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int) {
        log(.Warning, closure: closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    func notice(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int) {
        log(.Notice, closure: closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    func info(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int) {
        log(.Information, closure: closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    func debug(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int){
        log(.Debug, closure: closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    // MARK: Private
    
    fileprivate func log(_ level: Severity, closure: @autoclosure () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int) {

        guard let closureResult = closure() else { return }
        
        let closureString = String(describing: closureResult)
        
        lastLog = "[\(level)] -> \(fileName) \(functionName):\(lineNumber) > " + closureString
    }
    
}
