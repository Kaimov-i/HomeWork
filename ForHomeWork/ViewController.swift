//
//  ViewController.swift
//  ForHomeWork
//
//  Created by Ilman on 30.07.2025.
//

import UIKit

class ViewController: UIViewController {

    var person = Person()
    var helper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("My name is \(person.fullName)")
        helper.addPerson(Person(name: "Ilman", surname: "Kaimov"))
        helper.addPerson(Person(name: "Jon", surname: "Black"))
        print(helper.getPerson())
    }


}

