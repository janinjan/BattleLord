//
//  Punch.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

/**
 * The Colossus' weapon
 */
class Punch: Weapon {
    //MARK: - Init
    init() {
        super.init(weaponsName: "Punch", weaponsDamage: 5, weaponsHeal: 0, weaponsAftermath: 0)
    }
}

/**
 * The Colossus' special weapon which can appear in random chest
 */
class TheServantOfTheLord: Weapon {
    // Everytime the Colossus uses this weapon, he looses 80 lifes points due to aftermath. His enemy looses 40 life points.
    init() {
        super.init(weaponsName: "The Servant Of The Lord ⚔︎", weaponsDamage: 40, weaponsHeal: 0, weaponsAftermath: 80)
    }
}
