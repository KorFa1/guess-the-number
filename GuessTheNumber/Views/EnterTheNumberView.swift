//
//  EnterTheNumberView.swift
//  GuessTheNumberNew
//
//  Created by Кирилл Софрин on 20.02.2023.
//

import UIKit
import SnapKit


extension EnterTheNumberViewController {
    
    func createEnterThePlayersNumberTextField() {
        enterThePlayersNumberTextField.placeholder = "Guess the number"
        enterThePlayersNumberTextField.font = UIFont.systemFont(ofSize: 25)
        enterThePlayersNumberTextField.textAlignment = .center
        enterThePlayersNumberTextField.borderStyle = .none
        enterThePlayersNumberTextField.layer.borderWidth = 0.1
        enterThePlayersNumberTextField.layer.cornerRadius = 10
        enterThePlayersNumberTextField.returnKeyType = .done
        view.addSubview(enterThePlayersNumberTextField)
        
        enterThePlayersNumberTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalTo(300)
            make.top.equalToSuperview().inset(100)
        }
    }
        
    func createEnterThePlayersNumberButton() {
        enterThePlayersNumberButton.setTitle("Enter the Number", for: .normal)
        enterThePlayersNumberButton.backgroundColor = .systemBlue
        enterThePlayersNumberButton.layer.cornerRadius = 20
        view.addSubview(enterThePlayersNumberButton)
        
        enterThePlayersNumberButton.addTarget(self, action: #selector(enterThePlayersNumberButtonPressed), for: .touchUpInside)
        
        enterThePlayersNumberButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(300)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(75)
        }
    }
    
    // Enter The number Alerts
    func emptyTextFieldAlert() {
        let alert = UIAlertController(title: "Alert", message: "Empty text field", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { [weak self] _ in
            self?.enterThePlayersNumberTextField.text = nil
        }
        alert.addAction(action)
        self.present(alert, animated: true)
    }
    
    func textInTextFieldAlert() {
        let alert = UIAlertController(title: "Alert", message: "Text in text field", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { [weak self] _ in
            self?.enterThePlayersNumberTextField.text = nil
        }
        alert.addAction(action)
        self.present(alert, animated: true)
    }
    
    func outOfRangeAlert() {
        let alert = UIAlertController(title: "Alert", message: "Out of range. Enter the number in range 1...99", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { [weak self] _ in
            self?.enterThePlayersNumberTextField.text = nil
        }
        alert.addAction(action)
        self.present(alert, animated: true)
    }
}
