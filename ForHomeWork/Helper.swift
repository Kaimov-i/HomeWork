//
//  Helper.swift
//  ForHomeWork
//
//  Created by Ilman on 03.08.2025.
//

import Foundation

class Helper {
    var persons: [Person] = []
    
    func addPerson(_ person: Person) {
        persons.append(person)
    }
    
    func getPerson() {
        for person in persons {
            print("\(person.name) \(person.surname)")
        }
    }
}
