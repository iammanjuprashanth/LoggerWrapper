//
//  String+CustomInterpolation.swift
//  LocusInterview
//
//  Created by manjuprashanth s on 20/04/23.
//

import Foundation

public enum LogPrivacy {
    case `private`
    case `public`
}

extension String.StringInterpolation {
    
    mutating func appendInterpolation<T>(_ value: T, privacy: LogPrivacy = .private) {
        switch privacy {
        case .public:
            appendLiteral("\(value)")
        case .private:
            appendLiteral("<private>")
        }
    }
}
