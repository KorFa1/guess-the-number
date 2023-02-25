//
//  BotNumber.swift
//  GuessTheNumberNew
//
//  Created by Кирилл Софрин on 20.02.2023.
//

import Foundation


class BotNumber {
    
    private static var botNumber = 0
    
    static func setBotNumber() {
        botNumber = Int.random(in: 1...99)
    }
    
    static func lessMoreOrEqualBotNumber(_ number: Int) -> String {
        if number > botNumber {
            return "<"
        } else if number < botNumber {
            return ">"
        } else {
            return "="
        }
    }
    
    static func resetBotNumber() {
        botNumber = 0
    }
}
