//
//  PlayerTryView.swift
//  GuessTheNumberNew
//
//  Created by Кирилл Софрин on 20.02.2023.
//

import UIKit
import SnapKit


extension PlayerTryViewController {
    
    func createNumberOfPlayersTriesLabel() {
        numberOfPlayersTriesLabel.text = "Try № \(NumberOfPlayersTries.returnNumberOfPlayersTries())"
        numberOfPlayersTriesLabel.textAlignment = .center
        numberOfPlayersTriesLabel.font = UIFont.systemFont(ofSize: 25)
        view.addSubview(numberOfPlayersTriesLabel)

        numberOfPlayersTriesLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(50)
        }
    }

    func createYouAreGuessingLabel() {
        youAreGuessingLabel.text = "You are guessing"
        youAreGuessingLabel.textAlignment = .center
        youAreGuessingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(youAreGuessingLabel)

        youAreGuessingLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(numberOfPlayersTriesLabel.snp.bottom).offset(30)
        }
    }

    func createPlayersGuessingNumberTextField()  {
        playersGuessingNumberTextField.placeholder = "Enter the number"
        playersGuessingNumberTextField.font = UIFont.systemFont(ofSize: 25)
        playersGuessingNumberTextField.textAlignment = .center
        playersGuessingNumberTextField.borderStyle = .none
        playersGuessingNumberTextField.layer.borderWidth = 0.1
        playersGuessingNumberTextField.layer.cornerRadius = 10
        playersGuessingNumberTextField.returnKeyType = .done
        view.addSubview(playersGuessingNumberTextField)

        playersGuessingNumberTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalTo(300)
            make.top.equalTo(youAreGuessingLabel.snp.bottom).offset(50)
        }
    }

    func createMakeGuessButton() {
        makeGuessBotton.setTitle("Make Guess", for: .normal)
        makeGuessBotton.backgroundColor = .systemBlue
        makeGuessBotton.layer.cornerRadius = 20
        view.addSubview(makeGuessBotton)

        makeGuessBotton.addTarget(self, action: #selector(makeGuessButtonPressed), for: .touchUpInside)

        makeGuessBotton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(300)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(75)
        }
    }
    
    func createBotsAnswerLabel() {
        botsAnswerLabel.textAlignment = .center
        botsAnswerLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(botsAnswerLabel)
        
        botsAnswerLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(playersGuessingNumberTextField.snp.bottom).offset(75)
            
        }
    }
    
    // Enter The number Alerts
    func emptyTextFieldAlert() {
        let alert = UIAlertController(title: "Alert", message: "Empty text field", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { [weak self] _ in
            self?.playersGuessingNumberTextField.text = nil
        }
        alert.addAction(action)
        self.present(alert, animated: true)
    }

    func textInTextFieldAlert() {
        let alert = UIAlertController(title: "Alert", message: "Text in text field", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { [weak self] _ in
            self?.playersGuessingNumberTextField.text = nil
        }
        alert.addAction(action)
        self.present(alert, animated: true)
    }

    func outOfRangeAlert() {
        let alert = UIAlertController(title: "Alert", message: "Out of range. Enter the number in range 1...99", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { [weak self] _ in
            self?.playersGuessingNumberTextField.text = nil
        }
        alert.addAction(action)
        self.present(alert, animated: true)
    }
}
