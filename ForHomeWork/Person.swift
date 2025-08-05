//
//  Person.swift
//  ForHomeWork
//
//  Created by Ilman on 02.08.2025.
//

import Foundation

class Person {
    var name: String
    var surname: String
    
    init(name: String = "Ilman", surname: String = "Kaimov") {
        self.name = name
        self.surname = surname
    }
    
    var fullName: String {
        "\(name)  \(surname)"
    }
    
}
  
