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
    
}
