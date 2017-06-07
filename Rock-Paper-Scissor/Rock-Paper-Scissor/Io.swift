//
//  Io.swift
//  Rock-Paper-Scissor
//
//  Created by Riley Osborne on 6/7/17.
//  Copyright © 2017 Riley Osborne. All rights reserved.
//

import Foundation

class Io {
    func getInput() -> String {
        let keyboard = FileHandle.standardInput
        let inputData = keyboard.availableData
        let str = NSString(data: inputData, encoding: String.Encoding.utf8.rawValue)
        if let string = str {
            return string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        } else {
            return "Invalid input!"
        }
    }
}
