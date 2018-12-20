//
//  Colossus.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

class Colossus: Character {
    
    //MARK: - Init
    init(name: String) {
        super.init(characterType: "Colossus", lifePoint: 130, weapon: Punch(), name: name)
    }

}
