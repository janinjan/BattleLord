//
//  Colossus.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

class Colossus: Character {
    
    //MARK: - Init
    init(name: String) {
        super.init(characterType: "Colossus", lifePoint: 130, weapon: Punch(), name: name)
    }
    
    // Override attack method for Colossus
    override func attack(characterToAttack: Character) {
        switch weapon {
        case is Punch:
            super.attack(characterToAttack: characterToAttack) // Attack method from parent class
            characterToAttack.checkLifeCharacter() // if character's life under 0 set it to 0 with dead message
        case is TheServantOfTheLord: // Override attack method
            characterToAttack.lifePoint -= weapon.weaponsDamage
            print("Your enemy \(characterToAttack.name) has lost \(weapon.weaponsDamage) life points")
            self.lifePoint -= weapon.weaponsAftermath // by using this weapon, Colossus looses life points due to aftermath
            print("Using \(weapon.weaponsName) decreases \(weapon.weaponsAftermath) life points on self due to aftermath")
            characterToAttack.checkLifeCharacter()
            self.checkLifeCharacter()
        default:
            break
        }
    }
}
