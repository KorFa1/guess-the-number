//
//  PlayersNumber.swift
//  GuessTheNumberNew
//
//  Created by Кирилл Софрин on 20.02.2023.
//

import Foundation


class PlayerNumber {
    
    static private var playerNumber = 0
    
    static func setPlayerNumber(number: Int) {
        playerNumber = number
    }
    
    static func lessMoreOrEqualPlayerNumber(_ number: Int) -> String {
        if number > playerNumber {
            return "<"
        } else if number < playerNumber {
            return ">"
        } else {
            return "="
        }
    }
    
    static func resetPlayerNumber() {
        playerNumber = 0
    }
}



