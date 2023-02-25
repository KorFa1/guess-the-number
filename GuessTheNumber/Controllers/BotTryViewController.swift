//
//  BotTryViewController.swift
//  GuessTheNumberNew
//
//  Created by Кирилл Софрин on 14.02.2023.
//

import UIKit


class BotTryViewController: UIViewController {
    
    var numberOfBotsTriesLabel = UILabel()
    let computerIsGuessingLabel = UILabel()
    var botsGuessingNumberLabel = UILabel()
    let myNumberIsLabel = UILabel()
    let moreThanButton = UIButton()
    let lessThanButton = UIButton()
    let equalButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BotGuessesNumber.botMakeSuggestion()
    }
    
    override func viewDidLayoutSubviews() {
        view.backgroundColor = .white
        
        createNumberOFbotsTriesLabel()
        createComputerIsGuessingLabel()
        createBotsGuessingNumberLabel()
        createEqualButton()
        createMoreThanButton()
        createLessThanButton()
        createMyNumberIsLabel()
    }
    
    
    //MARK: - Objc methods
    @objc func equalButtonPressed() {
        if equalButton.titleLabel?.text! == PlayerNumber.lessMoreOrEqualPlayerNumber(BotGuessesNumber.botsSuggestion) {
            let playerTryViewController = PlayerTryViewController()
            self.navigationController?.pushViewController(playerTryViewController, animated: true)
        } else {
            wrongButtonPressedAlert()
        }
    }
    
    @objc func moreThanButtonPressed() {
        if moreThanButton.titleLabel?.text! == PlayerNumber.lessMoreOrEqualPlayerNumber(BotGuessesNumber.botsSuggestion) {
            BotGuessesNumber.botUpdateRangeAndSuggestion(symbol: ">")
            BotGuessesNumber.botMakeSuggestion()
            
            NumberOfBotsTries.incrementNumberOfBotsTries()
            
            updateLabels()
        } else {
            wrongButtonPressedAlert()
        }
    }
    
    @objc func LessThanButtonPressed() {
        if lessThanButton.titleLabel?.text! == PlayerNumber.lessMoreOrEqualPlayerNumber(BotGuessesNumber.botsSuggestion) {
            BotGuessesNumber.botUpdateRangeAndSuggestion(symbol: "<")
            BotGuessesNumber.botMakeSuggestion()
            
            NumberOfBotsTries.incrementNumberOfBotsTries()
            
            updateLabels()
        } else {
            wrongButtonPressedAlert()
        }
    }

    
    //MARK: - Helpers methods
    func updateLabels() {
        numberOfBotsTriesLabel.text = "Try № \(NumberOfBotsTries.returnNumberOfBotsTries())"
        botsGuessingNumberLabel.text = "Your number is \(BotGuessesNumber.botsSuggestion)"
    }
}
