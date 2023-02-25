//
//  PlayerTryViewController.swift
//  GuessTheNumberNew
//
//  Created by Кирилл Софрин on 14.02.2023.
//

import UIKit


class PlayerTryViewController: UIViewController {
    
    var numberOfPlayersTriesLabel = UILabel()
    let youAreGuessingLabel = UILabel()
    var playersGuessingNumberTextField = UITextField()
    let makeGuessBotton = UIButton()
    var botsAnswerLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        playersGuessingNumberTextField.delegate = self
        playersGuessingNumberTextField.becomeFirstResponder()

        BotNumber.setBotNumber()
    }
    
    override func viewDidLayoutSubviews() {
        view.backgroundColor = .white
        
        createNumberOfPlayersTriesLabel()
        createYouAreGuessingLabel()
        createPlayersGuessingNumberTextField()
        createMakeGuessButton()
        createBotsAnswerLabel()
    }

    
    //MARK: - Objc methods
    @objc func makeGuessButtonPressed() {
        guard let unwrappedText = playersGuessingNumberTextField.text, unwrappedText != Optional("") else {
            emptyTextFieldAlert()
            return
        }

        guard let integerText = Int(unwrappedText) else {
            textInTextFieldAlert()
            return
        }

        guard integerText > 0 && integerText < 100 else {
            outOfRangeAlert()
            return
        }

        if BotNumber.lessMoreOrEqualBotNumber(integerText) == "<" {
            updateNumberOfPlayersTries()
            botsAnswerLabel.text = "No, my number is less than your"
            return
        } else if BotNumber.lessMoreOrEqualBotNumber(integerText) == ">" {
            updateNumberOfPlayersTries()
            botsAnswerLabel.text = "No, my number is more than your"
            return
        } else {
            let finalScoreViewController = FinalScoreViewController()
            navigationController?.pushViewController(finalScoreViewController, animated: true)
        }
    }
    
//    //MARK: - Helpers methods
    func updateNumberOfPlayersTries() {
        NumberOfPlayersTries.incrementNumberOfPlayersTries()
        numberOfPlayersTriesLabel.text = "Try № \(NumberOfPlayersTries.returnNumberOfPlayersTries())"
    }
}



extension PlayerTryViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
