//
//  Colossus.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

/**
 * Colossus class inherits from the Character class. It defines a colossus
 */
class Colossus: Character {
    //MARK: - Init
    init(name: String) {
        super.init(characterType: "Colossus", lifePoint: 130, weapon: Punch(), name: name)
    }
    
    /**
     * Override attack method for Colossus. By using TheServantOfTheLord weapon, Colossus looses life points due to aftermath.
     */
    override func attack(characterToAttack: Character) {
        switch weapon {
        case is Punch:
            super.attack(characterToAttack: characterToAttack)
        case is TheServantOfTheLord:
            characterToAttack.lifePoint -= weapon.weaponsDamage
            print("\(weapon.weaponsName) inflicts \(weapon.weaponsDamage) damages points to your enemy:")
            characterToAttack.checkLifeCharacter()
            lifePoint -= weapon.weaponsAftermath
            print("\n"
                + "You have lost \(weapon.weaponsAftermath) life points due to weapon's aftermath:")
            checkLifeCharacter()
        default:
            break
        }
    }
    
    /**
     * Describe Colossus according to his weapon
     */
    override func describeCharacter() {
        switch weapon {
        case is Punch:
            super.describeCharacter()
        case is TheServantOfTheLord:
            print(" ▻ " + characterType + " " + name + ": Life: \(lifePoint) - " + weapon.weaponsName + " (Damages: \(weapon.weaponsDamage) pts / Aftermath: \(weapon.weaponsAftermath) pts)")
        default:
            break
        }
    }
}
