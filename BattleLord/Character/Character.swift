//
//  Characters.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

class Character {
    
    //MARK: - Properties
    let characterType: String // Fighter, Magus, Colossus ...
    let name: String
    var lifePoint: Int
    var maxLifePoint: Int
    var weapon: Weapon
    
    //MARK: - Init
    init(characterType: String, lifePoint: Int, weapon: Weapon, name: String) {
        self.characterType = characterType
        self.lifePoint = lifePoint
        self.weapon = weapon
        self.name = name
        self.maxLifePoint = lifePoint
    }
    
    //MARK: - Methods
    
    // Describe Character
    func describeCharacter() {
        if weapon.weaponsDamage >= 1 {
            print(" ▻ " + characterType + " " + name + ": Life: \(lifePoint) - " + weapon.weaponsName + " (Damages: \(weapon.weaponsDamage) pts)")
        } else {
            print(" ▻ " + characterType + " " + name + ": Life: \(lifePoint) - " + weapon.weaponsName + " (Heal: \(weapon.weaponsHeal) pts)")
        }
    }

    // Attack the enemy
    func attack(characterToAttack: Character) {
        characterToAttack.lifePoint -= weapon.weaponsDamage
        if characterToAttack.lifePoint <= 0 {
            characterToAttack.lifePoint = 0
            print("✖️ \(characterToAttack.name) is dead ✖️")
        } else {
            print("\(characterToAttack.name) has now \(characterToAttack.lifePoint) life points")
        }
    }
}
