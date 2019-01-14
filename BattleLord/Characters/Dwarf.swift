//
//  Dwarf.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

/**
 * Dwarf class inherits from the Character class. It defines a dwarf
 */
class Dwarf: Character {
    //MARK: - Init
    init(name: String) {
        super.init(characterType: "Dwarf", lifePoint: 45, weapon: Axe(), name: name)
    }
}
