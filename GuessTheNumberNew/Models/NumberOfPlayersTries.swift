//
//  NumberOfPlayersTries.swift
//  GuessTheNumberNew
//
//  Created by Кирилл Софрин on 20.02.2023.
//

import Foundation


class NumberOfPlayersTries {
    
    private static var numberOfPlayersTries = 1
    
    static func returnNumberOfPlayersTries() -> Int {
        numberOfPlayersTries
    }
    
    static func incrementNumberOfPlayersTries() {
        numberOfPlayersTries += 1
    }
    
    static func resetNumberOfPlayersTries() {
        numberOfPlayersTries = 1
    }
}
