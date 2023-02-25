//
//  NumberOfBotsAndPlayersTries.swift
//  GuessTheNumberNew
//
//  Created by Кирилл Софрин on 20.02.2023.
//

import Foundation


class NumberOfBotsTries {
    
    private static var numberOfBotsTries = 1
    
    static func returnNumberOfBotsTries() -> Int {
        numberOfBotsTries
    }
    
    static func incrementNumberOfBotsTries() {
        numberOfBotsTries += 1
    }
    
    static func resetNumberOfBotsTries() {
        numberOfBotsTries = 1
    }
}
