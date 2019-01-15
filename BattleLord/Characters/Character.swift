//
//  Characters.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

/**
 * This class defines all characters' characteristics
 */
class Character {
    //MARK: - Properties
    let characterType: String // Fighter, Magus, Colossus ...
    let name: String
    var lifePoint: Int
    let maxLifePoint: Int
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
    /**
     * Describe Character
     */
    func describeCharacter() {
        print(" ▻ " + characterType + " " + name + ": Life: \(lifePoint) - " + weapon.weaponsName + " (Damages: \(weapon.weaponsDamage) pts)")
    }
    
    /**
     * Attack the enemy
     */
    func attack(characterToAttack: Character) {
        characterToAttack.lifePoint -= weapon.weaponsDamage
        characterToAttack.checkLifeCharacter()
    }
    
    /**
     * Control life points of character. If it's under 0, set it to 0
     */
    func checkLifeCharacter() {
        if self.lifePoint <= 0 {
            self.lifePoint = 0
            print(" ✖️ \(characterType) \(self.name) is dead ✖️")
        } else {
            print(" 💢 \(name) has now \(lifePoint) life points")
        }
    }
}
