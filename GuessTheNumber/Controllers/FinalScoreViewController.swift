//
//  FinalScoreViewController.swift
//  GuessTheNumberNew
//
//  Created by Кирилл Софрин on 14.02.2023.
//

import UIKit


class FinalScoreViewController: UIViewController {
    
    let scoresLabel = UILabel()
    let yourTriesCoutLabel = UILabel()
    let computerTriesCountLabel = UILabel()
    let whoWinLabel = UILabel()
    let mainMenuButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        view.backgroundColor = .white
        
        createScoresLabel()
        createYourTriesCountLabel()
        createComputerTriesCountLabel()
        createMainMenuButton()
        createWhoWinLabel()
    }
    
    
    //MARK: - Objc methods
    @objc func mainMenuButtonPressed() {
        NumberOfBotsTries.resetNumberOfBotsTries()
        NumberOfPlayersTries.resetNumberOfPlayersTries()
        BotNumber.resetBotNumber()
        PlayerNumber.resetPlayerNumber()
        BotGuessesNumber.resetBotRange()
        
        navigationController?.popToRootViewController(animated: true)
    }
}

