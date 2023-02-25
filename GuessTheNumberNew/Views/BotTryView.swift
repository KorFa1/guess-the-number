//
//  BotTryView.swift
//  GuessTheNumberNew
//
//  Created by Кирилл Софрин on 20.02.2023.
//

import UIKit
import SnapKit


extension BotTryViewController {

    func createNumberOFbotsTriesLabel() {
        numberOfBotsTriesLabel.text = "Try № \(NumberOfBotsTries.returnNumberOfBotsTries())"
        numberOfBotsTriesLabel.textAlignment = .center
        numberOfBotsTriesLabel.font = UIFont.systemFont(ofSize: 25)
        view.addSubview(numberOfBotsTriesLabel)
        
        numberOfBotsTriesLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(50)
        }
    }
    
    func createComputerIsGuessingLabel() {
        computerIsGuessingLabel.text = "Computer is guessing"
        computerIsGuessingLabel.textAlignment = .center
        computerIsGuessingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(computerIsGuessingLabel)
        
        computerIsGuessingLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(numberOfBotsTriesLabel.snp.bottom).offset(30)
        }
    }
    
    func createBotsGuessingNumberLabel() {
        botsGuessingNumberLabel.text = "Your number is \(BotGuessesNumber.botsSuggestion)"
        botsGuessingNumberLabel.textAlignment = .center
        botsGuessingNumberLabel.font = UIFont.systemFont(ofSize: 25)
        view.addSubview(botsGuessingNumberLabel)
        
        botsGuessingNumberLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(computerIsGuessingLabel.snp.bottom).offset(50)
        }
    }
    
    func createMyNumberIsLabel() {
        myNumberIsLabel.text = "My number is ..."
        myNumberIsLabel.textAlignment = .center
        myNumberIsLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(myNumberIsLabel)
        
        myNumberIsLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.bottom.equalTo(equalButton.snp.top).offset(-10)
        }
    }
    
    func createEqualButton() {
        equalButton.setTitle("=", for: .normal)
        equalButton.setTitleColor(.black, for: .normal)
        equalButton.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        equalButton.backgroundColor = .white
        equalButton.layer.borderWidth = 0.5
        equalButton.layer.cornerRadius = 20
        view.addSubview(equalButton)
        
        equalButton.addTarget(self, action: #selector(equalButtonPressed), for: .touchUpInside)
        
        equalButton.snp.makeConstraints { make in
            make.height.equalTo(75)
            make.width.equalTo(75)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(50)
        }
    }
    
    func createMoreThanButton() {
        moreThanButton.setTitle(">", for: .normal)
        moreThanButton.setTitleColor(.black, for: .normal)
        moreThanButton.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        moreThanButton.backgroundColor = .white
        moreThanButton.layer.borderWidth = 0.5
        moreThanButton.layer.cornerRadius = 20
        view.addSubview(moreThanButton)
        
        moreThanButton.addTarget(self, action: #selector(moreThanButtonPressed), for: .touchUpInside)
        
        moreThanButton.snp.makeConstraints { make in
            make.height.equalTo(75)
            make.width.equalTo(75)
            make.bottom.equalToSuperview().inset(50)
            make.right.equalTo(equalButton.snp.left).offset(-10)
        }
    }
    
    func createLessThanButton() {
        lessThanButton.setTitle("<", for: .normal)
        lessThanButton.setTitleColor(.black, for: .normal)
        lessThanButton.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        lessThanButton.backgroundColor = .white
        lessThanButton.layer.borderWidth = 0.5
        lessThanButton.layer.cornerRadius = 20
        view.addSubview(lessThanButton)
        
        lessThanButton.addTarget(self, action: #selector(LessThanButtonPressed), for: .touchUpInside)
        
        lessThanButton.snp.makeConstraints { make in
            make.height.equalTo(75)
            make.width.equalTo(75)
            make.bottom.equalToSuperview().inset(50)
            make.left.equalTo(equalButton.snp.right).offset(10)
        }
    }
    
    func wrongButtonPressedAlert() {
        let alert = UIAlertController(title: "Alert", message: "You shouldn't cheat the bot...", preferredStyle: .alert)
        let action = UIAlertAction(title: "Sorry", style: .default)
        alert.addAction(action)
        self.present(alert, animated: true)
    }
}
