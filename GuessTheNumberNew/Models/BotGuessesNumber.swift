//
//  BotGuessesNumber.swift
//  GuessTheNumberNew
//
//  Created by Кирилл Софрин on 20.02.2023.
//

import Foundation

class BotGuessesNumber {
    private static var a = 1
    private static var b = 99
    static var botsSuggestion = 0
    
    static func botMakeSuggestion() {
        botsSuggestion = Int.random(in: a...b)
    }
    
    static func botUpdateRangeAndSuggestion(symbol: String) {
        if symbol == ">" {
            a = botsSuggestion + 1
        } else if symbol == "<" {
            b = botsSuggestion - 1
        }
    }
    
    static func resetBotRange() {
        a = 1
        b = 99
    }
}
