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
    
    //MARK: - Init
    init(weaponsName: String, weaponsDamage: Int, weaponsHeal: Int) {
        self.weaponsName = weaponsName
        self.weaponsDamage = weaponsDamage
        self.weaponsHeal = weaponsHeal
    }
}
