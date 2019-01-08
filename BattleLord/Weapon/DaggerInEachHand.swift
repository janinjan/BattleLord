//
//  DaggerInEachHand.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

// The Thief's weapon
class DaggerInEachHand: Weapon {
    
    //MARK: - Init
    init() {
        super.init(weaponsName: "Dagger in each Hand", weaponsDamage: 15, weaponsHeal: 0, weaponsAftermath: 0)
    }
}

// The Thief's special weapon which can appear in random chest
class ShadowDagger: Weapon {
    
    //MARK: - Init
    init() {
        super.init(weaponsName: "Shadow Dagger ⚔︎", weaponsDamage: 25, weaponsHeal: 0, weaponsAftermath: 0)
    }
}
