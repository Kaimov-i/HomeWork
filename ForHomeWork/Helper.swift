//
//  Helper.swift
//  ForHomeWork
//
//  Created by Ilman on 03.08.2025.
//

import Foundation

class Helper {
   private var persons: [User] = []
    
    func addPerson(_ person: User) {
        persons.append(person)
    }
    
    func addpersons(_ persons: [User]) {
        persons.forEach { person in
            self.persons.append(person)
        }
    }
    
    func getPerson() -> [User] {
       persons
    }
}
