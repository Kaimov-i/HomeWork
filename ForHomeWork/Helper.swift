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
        self.persons.append(contentsOf: persons)
    }
    
    func getPerson() -> [User] {
       persons
    }
}
