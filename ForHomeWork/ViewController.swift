//
//  ViewController.swift
//  ForHomeWork
//
//  Created by Ilman on 30.07.2025.
//

import UIKit

class ViewController: UIViewController {


    var helper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        helper.addPerson(User(userName: "Ilman", password: "123", personalData: Person(name: "Ilman", surname: "Kaimov")))
        helper.addPerson(User(userName: "john", password: "321", personalData: Person(name: "John", surname: "Doe")))
        print(helper.getPerson())
    }


}

