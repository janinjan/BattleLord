//
//  Team.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

class Team {
    //MARK: - Properties
    var name: String
    var characters = [Character]()
    
    //MARK: - Init
    init(name: String) {
        self.name = name
    }
    
    //MARK: - Methods
    /**
     * Show characters in team with their descriptions
     */
    func showCharactersInTeam() {
        print("\n 🗡 Team \(name):")
        for character in characters {
            character.describeCharacter()
        }
    }
    
    /**
     * If a Character is dead, function returns true
     */
    func isDead() -> Bool {
        var isDead = false
        for character in characters {
            if character.lifePoint == 0 {
                isDead = true
            } else {
                return false
            }
        }
        return isDead
    }
}
