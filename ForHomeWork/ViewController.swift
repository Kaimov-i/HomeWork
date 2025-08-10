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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        view.alpha = 0.9
        helper.addpersons(userRepository.getAllUsers())
        helper.getPerson().forEach { user in
            print(user)
        }
    }


}

