//
//  Game.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

class Game {
    
    //MARK - Property
    var teamsArray = [Team]()
    
    //MARK - Methods
  
    // Start the Game
    func start() {
        print("=============[⚔️ BattleLord ⚔️]=============")
       
        for n in 0..<2 {
            print("\n ==========================================="
                + "\n Player \(n + 1), enter a Team's name :")
            let team = Team()
            teamsArray.append(team)
            team.showListOfTeam()
        }
}     
}


