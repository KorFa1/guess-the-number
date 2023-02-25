//
//  ViewController.swift
//  GuessTheNumberNew
//
//  Created by Кирилл Софрин on 14.02.2023.
//

import UIKit


class StartNewGameViewController: UIViewController {
    
    let myAwesomeGameLabel = UILabel()
    let startNewGameButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        view.backgroundColor = .white
        
        createStartNewGameButton()
        createMyAwesomeGameLabel()
    }
    
    
    //MARK: - Objc methods
    @objc func startNewGameButtonPressed() {
        let enterTheNumberViewController = EnterTheNumberViewController()
        navigationController?.pushViewController(enterTheNumberViewController, animated: true)
    }
}

