//
//  Logger.swift
//  StringInterpolation
//
//  Created by manjuprashanth s on 20/04/23.
//

import Foundation
import os

enum LogLevel {
    case info
    case debug
    case warning
    case error
    case fault
}

class Log {
    
    typealias LogBlock = (_ formattedMessage: String, _ level: LogLevel, _ category: String, _ subsystem: String) -> Void
    
    private var category: String
    private var subsystem: String
    
    private var logBlock: LogBlock = { message, level, category, subsystem in
        switch level {
        case .info:
            Logger(subsystem: subsystem, category: category).info("\(message)")
        case .debug:
            Logger(subsystem: subsystem, category: category).debug("\(message)")
        case .warning:
            Logger(subsystem: subsystem, category: category).fault("\(message)")
        case .error:
            Logger(subsystem: subsystem, category: category).error("\(message)")
        default:
            Logger(subsystem: subsystem, category: category).trace("\(message)")
        }
    }
    
    init (subsystem: String = Bundle.main.bundleIdentifier!, category: String = "generic", logBlock: LogBlock? = nil) {
        self.category = category
        self.subsystem = subsystem
        guard let logBlock = logBlock else { return }
        self.logBlock = logBlock
    }
    
    func log(message: String, file: String = #file, line: Int = #line, function: String = #function, level: LogLevel) {
        let message = "\(message) in \(file) - \(function) : line - \(line)"
        logBlock(message, level, category, subsystem)
    }
}
