//
//  XMLParser+Eject.swift
//  Eject
//
//  Created by Brian King on 10/24/16.
//  Copyright © 2016 Brian King. All rights reserved.
//

import Foundation

extension XMLParser {
    struct Error: Swift.Error {
        /// The error generated by XMLParser
        public let parserError: Swift.Error
        /// The line number the error occurred on.
        public let line: Int
        /// The column the error occurred on.
        public let column: Int
    }

    func throwingParse() throws {
        if parse() == false {
            throw Error(parserError: parserError!, line: lineNumber, column: columnNumber)
        }
    }
}