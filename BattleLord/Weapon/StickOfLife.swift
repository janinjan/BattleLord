//
//  StickOfLife.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

// The Magus's weapon
class StickOfLife: Weapon {
    
    //MARK: - Init
    init() {
        super.init(weaponsName: "Stick of life", weaponsDamage: 0, weaponsHeal: 30, weaponsAftermath: 0)
    }
}

// The Magus's special weapon which can appear in random chest
class PurifiedYggdrasilStick: Weapon {
    
    //MARK: - Init
    init() {
        super.init(weaponsName: "Purified Yggdrasil Stick ⚔︎", weaponsDamage: 0, weaponsHeal: 40, weaponsAftermath: 0)
    }
}
