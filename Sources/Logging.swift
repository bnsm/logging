//
//  Logging.swift
//  Logging
//
//  Created by Martin Banas on 30/11/16.
//  Copyright © 2016 Logging Contributors. All rights reserved.
//

import Foundation

/// Extend `Logging` protocol to provide own implementation of logging
/// The list of severities is inspired by RFC 5424
public protocol Logging {
    
    /// Should be corrected immediately (propagated to the UI)
    func alert(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int)
    
    /// Critical conditions (a failure in the system, leads to crash of the app)
    func critical(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int)
    
    /// Error conditions (an app has exceeded its file storage limit and attempts to write are failing)
    func error(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int)
    
    /// May indicate that an error will occur if action is not taken (an app's file system is running out of space)
    func warning(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int)
    
    /// Events that are unusual, but not error conditions
    func notice(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int)
    
    /// Normal operational messages that require no action (an operation has started, paused or ended successfully)
    func info(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int)
    
    /// Information useful to developers for debugging the app
    func debug(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString, fileName: StaticString, lineNumber: Int)
}


/// `Logging` protocol is already extended to support default parameters
public extension Logging {

    func alert(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString = #function, fileName: StaticString = #file, lineNumber: Int = #line) {
        alert(closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    func critical(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString = #function, fileName: StaticString = #file, lineNumber: Int = #line) {
        critical(closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    func error(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString = #function, fileName: StaticString = #file, lineNumber: Int = #line) {
        error(closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    func warning(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString = #function, fileName: StaticString = #file, lineNumber: Int = #line) {
        warning(closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    func notice(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString = #function, fileName: StaticString = #file, lineNumber: Int = #line) {
        notice(closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    func info(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString = #function, fileName: StaticString = #file, lineNumber: Int = #line) {
        info(closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
    
    func debug(_ closure: @autoclosure @escaping () -> Any?, functionName: StaticString = #function, fileName: StaticString = #file, lineNumber: Int = #line) {
        debug(closure, functionName: functionName, fileName: fileName, lineNumber: lineNumber)
    }
}
