//
//  Weapons.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

class Weapon {
    
    //MARK - Properties
    let weaponsName: String
    let weaponsDamage: Int
    
    //MARK - Init
        init(weaponsName: String, weaponsDamage: Int) {
        self.weaponsName = weaponsName
        self.weaponsDamage = weaponsDamage
    }
}
