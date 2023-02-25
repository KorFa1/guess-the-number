//
//  EnterTheNumberViewController.swift
//  GuessTheNumberNew
//
//  Created by Кирилл Софрин on 14.02.2023.
//

import UIKit


class EnterTheNumberViewController: UIViewController {
    
    let enterThePlayersNumberTextField = UITextField()
    let enterThePlayersNumberButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        enterThePlayersNumberTextField.delegate = self
        enterThePlayersNumberTextField.becomeFirstResponder()
    }
    
    override func viewDidLayoutSubviews() {
        view.backgroundColor = .white
        
        createEnterThePlayersNumberButton()
        createEnterThePlayersNumberTextField()
    }
    

    //MARK: - Objc methods
    @objc func enterThePlayersNumberButtonPressed() {
        guard let unwrappedText = enterThePlayersNumberTextField.text, unwrappedText != Optional("") else {
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
        
        PlayerNumber.setPlayerNumber(number: integerText)
        
        let botTryViewController = BotTryViewController()
        navigationController?.pushViewController(botTryViewController, animated: true)
    }
}


extension EnterTheNumberViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
