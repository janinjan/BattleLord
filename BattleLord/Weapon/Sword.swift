//
//  Sword.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

// The Fighter's weapon
class Sword: Weapon {
    
    //MARK: - Init
    init() {
        super.init(weaponsName: "Sword", weaponsDamage: 10, weaponsHeal: 0, weaponsAftermath: 0)
    }
}

// The Fighter's special weapon which can appear in random chest
class SuperSword: Weapon {
    
    //MARK: - Init
    init() {
        super.init(weaponsName: "Super Sword ⚔︎", weaponsDamage: 20, weaponsHeal: 0, weaponsAftermath: 0)
    }
}
