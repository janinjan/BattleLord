//
//  Magus.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

/**
 * Magus class inherits from the Character class. It defines a magus
 */
class Magus: Character {
    //MARK: - Init
    init(name: String) {
        super.init(characterType: "Magus", lifePoint: 60, weapon: StickOfLife(), name: name)
    }
    
    //MARK: - Method
    /**
     * Magus heals someone from his team. Character's life points can't be more than his max life points
     */
    func heal(characterToHeal: Character) {
        characterToHeal.lifePoint += weapon.weaponsHeal
        if characterToHeal.lifePoint >= characterToHeal.maxLifePoint {
            characterToHeal.lifePoint = characterToHeal.maxLifePoint
        }
        print(" 🧙🏼‍♂️ \(characterType) \(characterToHeal.name) has been healed and has now \(characterToHeal.lifePoint) life points")
    }
    
    /**
     * Describe Magus Character
     */
    override func describeCharacter() {
        print(" ▻ " + characterType + " " + name + ": Life: \(lifePoint) - " + weapon.weaponsName + " (Heal: \(weapon.weaponsHeal) pts)")
    }
    
    /**
     * Magus can't attack, only heal
     */
    override func attack(characterToAttack: Character) {
        print("you can't attack a character")
    }
}
