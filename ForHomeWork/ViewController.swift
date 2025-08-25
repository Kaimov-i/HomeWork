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
    private let button = UIButton()
    private let stakView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .brown
        helper.addpersons(userRepository.getAllUsers())
        helper.getPerson().forEach { user in
            print(user)
        }
        
        setupButton()
        setupLabel()
        setupStackView()
        view.addSubview(stakView)
        setupConstraints()
    }
    
    private func setupLabel() {
        guard let randomUser = helper.getPerson().randomElement()?.userName else { return }
        textLabel.text = randomUser
        textLabel.font = .systemFont(ofSize: 25)
        textLabel.textAlignment = .center
        textLabel.textColor = .blue
        textLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
    }
    
    private func setupButton()  {
        button.setTitle("Show FullName", for: .normal)
        button.backgroundColor = .clear
        button.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
    }
    
    private func setupStackView() {
        stakView.axis = .vertical
        stakView.distribution = .fill
        stakView.spacing = 20
        stakView.addArrangedSubview(textLabel)
        stakView.addArrangedSubview(button)
    }
    
    private func setupConstraints() {
        stakView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stakView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            stakView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            stakView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
    }
}

