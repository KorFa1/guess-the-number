//
//  FinalScoreView.swift
//  GuessTheNumberNew
//
//  Created by Кирилл Софрин on 20.02.2023.
//

import UIKit
import SnapKit


extension FinalScoreViewController {
    
    func createScoresLabel() {
        scoresLabel.text = "Scores:"
        scoresLabel.textAlignment = .center
        scoresLabel.font = UIFont.systemFont(ofSize: 25)
        view.addSubview(scoresLabel)
        
        scoresLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(50)
        }
    }
    
    func createYourTriesCountLabel() {
        yourTriesCoutLabel.text = "Your's tries count: \(NumberOfPlayersTries.returnNumberOfPlayersTries())"
        yourTriesCoutLabel.textAlignment = .center
        yourTriesCoutLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(yourTriesCoutLabel)

        yourTriesCoutLabel.snp.makeConstraints { make in
            make.top.equalTo(scoresLabel.snp.bottom).offset(75)
            make.left.equalToSuperview().offset(25)
        }
    }

    func createComputerTriesCountLabel() {
        computerTriesCountLabel.text = "Computers's tries count: \(NumberOfBotsTries.returnNumberOfBotsTries()) "
        computerTriesCountLabel.textAlignment = .center
        computerTriesCountLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(computerTriesCountLabel)

        computerTriesCountLabel.snp.makeConstraints { make in
            make.top.equalTo(yourTriesCoutLabel.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(25)
        }
    }
    
    func createMainMenuButton() {
        mainMenuButton.setTitle("Main menu", for: .normal)
        mainMenuButton.backgroundColor = .systemBlue
        mainMenuButton.layer.cornerRadius = 20
        view.addSubview(mainMenuButton)
        
        mainMenuButton.addTarget(self, action: #selector(mainMenuButtonPressed), for: .touchUpInside)
        
        mainMenuButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(300)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(75)
        }
    }
    
    func createWhoWinLabel() {
        whoWinLabel.text = WhoWinLogic.whoWin()
        whoWinLabel.textAlignment = .center
        whoWinLabel.font = UIFont.systemFont(ofSize: 25)
        view.addSubview(whoWinLabel)
        
        whoWinLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(mainMenuButton.snp.top).offset(-150)
        }
    }
}
