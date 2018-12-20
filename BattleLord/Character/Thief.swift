//
//  Thief.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

class Thief: Character {
    
    //MARK: - Init
    init(name: String) {
        super.init(characterType: "Thief", lifePoint: 70, weapon: DaggerInEachHand(), name: name)
    }

}
