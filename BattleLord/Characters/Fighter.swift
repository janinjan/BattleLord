//
//  Fighter.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

/**
 * Fighter class inherits from the Character class. It defines a fighter
 */
class Fighter: Character {
    //MARK: - Init
    init(name: String) {
        super.init(characterType: "Fighter", lifePoint: 100, weapon: Sword(), name: name)
    }
}
