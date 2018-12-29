//
//  Magus.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

class Magus: Character {
    
    //MARK: - Init
    init(name: String) {
        super.init(characterType: "Magus", lifePoint: 60, weapon: StickOfLife(), name: name)
    }
    
    //MARK: - Method
    
    // Magus heals someone from his team. Character's life points can't be more than his max life points
    func heal(characterToHeal: Character) {
            characterToHeal.lifePoint += weapon.weaponsDamage
            if characterToHeal.lifePoint >= characterToHeal.maxLifePoint {
            characterToHeal.lifePoint = characterToHeal.maxLifePoint
            }
            print("\(characterToHeal.name) has now \(characterToHeal.lifePoint) life points")
    }
    
}
