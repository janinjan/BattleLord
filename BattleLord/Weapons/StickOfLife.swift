//
//  StickOfLife.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

/**
 * The Magus' weapon
 */
class StickOfLife: Weapon {
    //MARK: - Init
    init() {
        super.init(weaponsName: "Stick of life", weaponsDamage: 0, weaponsHeal: 10, weaponsAftermath: 0)
    }
}

/**
 * The Magus' special weapon which can appear in random chest
 */
class PurifiedYggdrasilStick: Weapon {
    //MARK: - Init
    init() {
        super.init(weaponsName: "Purified Yggdrasil Stick ⚔︎", weaponsDamage: 0, weaponsHeal: 20, weaponsAftermath: 0)
    }
}
