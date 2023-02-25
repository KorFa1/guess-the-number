//
//  WhoWinLogic.swift
//  GuessTheNumberNew
//
//  Created by Кирилл Софрин on 21.02.2023.
//

import Foundation

class WhoWinLogic {
    static func whoWin() -> String {
        if NumberOfBotsTries.returnNumberOfBotsTries() > NumberOfPlayersTries.returnNumberOfPlayersTries() {
            return "You Win"
        } else if NumberOfBotsTries.returnNumberOfBotsTries() < NumberOfPlayersTries.returnNumberOfPlayersTries() {
            return "Computer Win"
        } else {
            return "Draw"
        }
    }
}
