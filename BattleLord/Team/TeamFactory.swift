//
//  TeamFactory.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 04/01/2019.
//  Copyright © 2019 Janin Culhaoglu. All rights reserved.
//

import Foundation

class TeamFactory {
    
    //MARK: - Property
    private static var charactersName = [String]()
    
    // Check that entered name is unique in the Game
    static func uniqueName(isTeamName: Bool) -> String {
        var characterName = ""
        repeat {
            if isTeamName {
                print("▻ Enter a Team's name :")
            } else {
                print("▻ Enter a name for your character :")
            }
            if let data = readLine() {
                characterName = data
                if charactersName.contains(characterName) {
                    print("This name already exist !")
                    characterName = ""
                } else {
                    charactersName.append(characterName)
                }
            }
        } while characterName == ""
        return characterName
    }
    
    // Player's choice  1, 2, 3, 4 or 5 to select Character
    static func enterNumber(userChoice: inout Int) {
        repeat {
            if let data = readLine() {
                if let dataToInt = Int(data) {
                    userChoice = dataToInt
                }
            }
        } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4 && userChoice != 5
    }
}
