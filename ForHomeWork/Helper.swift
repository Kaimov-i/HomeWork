//
//  Helper.swift
//  ForHomeWork
//
//  Created by Ilman on 03.08.2025.
//

import Foundation

class Helper {
    var persons: [User] = []
    
    func addPerson(_ person: User) {
        persons.append(person)
    }
    
    func getPerson() {
        for person in persons {
            print("\(person.name) \(person.surname)")
        }
    }
}
