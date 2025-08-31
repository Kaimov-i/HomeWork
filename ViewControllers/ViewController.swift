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
    private let redButton = CostomButton(stile: StileOfButton(title: "Show New User", color: .red),  state: .normal)
    private let greenButton = CostomButton(stile: StileOfButton(title: "Hide User", color: .green, shadowIsOn: true), state: .normal)
    private let stakView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        helper.addpersons(userRepository.getAllUsers())
        helper.getPerson().forEach { user in
            print(user)
        }
        
        setupLabel()
        setupStackView()
        view.addSubview(stakView)
        setupConstraints()
    }
  
   
}
// MARK: - Setup View
private extension ViewController {
    
     func setupLabel() {
        guard let randomUser = helper.getPerson().randomElement()?.userName else { return }
        textLabel.text = randomUser
        textLabel.font = .systemFont(ofSize: 25)
        textLabel.textAlignment = .center
        textLabel.textColor = .blue
    }
    
    private func setupStackView() {
        stakView.axis = .vertical
        stakView.distribution = .fillProportionally
        stakView.spacing = 20
        stakView.addViews(view: textLabel, redButton, greenButton)
        stakView.addArrangedSubview(textLabel)
        stakView.addArrangedSubview(redButton)
        stakView.addArrangedSubview(greenButton)
    }
    
}

// MARK: - Setup Constraints
extension ViewController {
    private func setupConstraints() {
        stakView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stakView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            stakView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            stakView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
    }
}

