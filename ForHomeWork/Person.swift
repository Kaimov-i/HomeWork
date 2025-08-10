//
//  Person.swift
//  ForHomeWork
//
//  Created by Ilman on 02.08.2025.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    
    var fullName: String {
        "\(name)  \(surname)"
    }
}
  
