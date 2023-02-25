//
//  StartNewGameView.swift
//  GuessTheNumberNew
//
//  Created by Кирилл Софрин on 20.02.2023.
//

import UIKit
import SnapKit


extension StartNewGameViewController {
    
    func createMyAwesomeGameLabel() {
        myAwesomeGameLabel.text = "My Awesome Game"
        myAwesomeGameLabel.textAlignment = .center
        myAwesomeGameLabel.font = UIFont.systemFont(ofSize: 25)
        view.addSubview(myAwesomeGameLabel)
        
        myAwesomeGameLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(100)
        }
    }
    
     func createStartNewGameButton() {
         startNewGameButton.setTitle("Start New Game", for: .normal)
         startNewGameButton.backgroundColor = .systemBlue
         startNewGameButton.layer.cornerRadius = 20
         view.addSubview(startNewGameButton)
        
         startNewGameButton.addTarget(self, action: #selector(startNewGameButtonPressed), for: .touchUpInside)
        
         startNewGameButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(300)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(75)
        }
    }
}

