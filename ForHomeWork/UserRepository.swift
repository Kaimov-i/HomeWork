//
//  UserRepository.swift
//  ForHomeWork
//
//  Created by Ilman on 09.08.2025.
//

import Foundation

class UserRepository {
    
    func getAllUsers() -> [User] {
        return [
            User(userName: "ilman", password: "123", personalData:
                    Person(name: "Ilman", surname: "Kurbanov",)),
            User(userName: "ilman1", password: "123", personalData:
                    Person(name: "Ilman1", surname: "Kurbanov1")),
            User(userName: "ilman2", password: "123", personalData:
                    Person(name: "Ilman2", surname: "Kurbanov2"))
        ]
    }
}
