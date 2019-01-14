//
//  Weapons.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

class Weapon {
    //MARK: - Properties
    let weaponsName: String
    let weaponsDamage: Int
    let weaponsHeal: Int
    let weaponsAftermath: Int
    
    //MARK: - Init
    init(weaponsName: String, weaponsDamage: Int, weaponsHeal: Int, weaponsAftermath: Int) {
        self.weaponsName = weaponsName
        self.weaponsDamage = weaponsDamage
        self.weaponsHeal = weaponsHeal
        self.weaponsAftermath = weaponsAftermath // Character which uses weapon with positive weaponsAftermath property, looses life points on self due to aftermath
    }
    
    //MARK: - Method
    /**
     * Describe new weapon when chest appears
     */
    func describeNewWeapon(of character: Character) {
        switch character {
        case is Magus:
            print(" ▻ " + weaponsName + " (Heal: \(weaponsHeal) pts)")
        case is Colossus:
            print(" ▻ " + weaponsName + " (Damages: \(weaponsDamage) pts / Aftermath: \(weaponsAftermath) pts)")
        default:
            print(" ▻ " + weaponsName + " (Damages: \(weaponsDamage) pts)")
        }
    }
}
