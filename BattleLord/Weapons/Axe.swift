//
//  Axe.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

/**
 * The Dwarf's weapon
 */
class Axe: Weapon {
    //MARK: - Init
    init() {
        super.init(weaponsName: "Axe", weaponsDamage: 20, weaponsHeal: 0, weaponsAftermath: 0)
    }
}

/**
 * The Dwarf's special weapon which can appear in random chest
 */
class SuperAxe: Weapon {
    //MARK: - Init
    init() {
        super.init(weaponsName: "Super Axe ⚔︎", weaponsDamage: 25, weaponsHeal: 0, weaponsAftermath: 0)
    }
}
