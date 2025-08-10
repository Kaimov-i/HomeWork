//
//  ViewController.swift
//  ForHomeWork
//
//  Created by Ilman on 30.07.2025.
//

import UIKit

class ViewController: UIViewController {

    private let helper = Helper()
    private let userRepository = UserRepository()
    private let textLabel = UILabel()
    private var button: UIButton {
        let button = UIButton()
        button.setTitle("Show FullName", for: .normal)
        button.backgroundColor = super.view.backgroundColor
        button.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
        return button
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        helper.addpersons(userRepository.getAllUsers())
        helper.getPerson().forEach { user in
            print(user)
        }
        
        view.addSubview(button)
        setupLabel(text: textLabel)
        view.addSubview(textLabel)
        
    }
    
    private func setupLabel(text: UILabel) {
        guard let randomUser = helper.getPerson().randomElement()?.userName else { return }
        text.text = randomUser
        text.font = .systemFont(ofSize: 25)
        text.textColor = .blue
        text.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
    }
    
}

