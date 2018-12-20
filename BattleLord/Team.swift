//
//  Team.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

class Team {
    
    //MARK - Properties
      var characters = [Character]()
      var name = ""
      var teamName = ""
    
    //MARK - Init
    init() {
        createTeamName()
        createCharacters()
    }
    
    //MARK - Methods
    
    
    func createTeamName() {
        repeat {
            if let data = readLine() {
              teamName = data
            }
        } while teamName == ""
    }
    
    func showListOfTeam() {
        
        print("\n ==========================================="
            + "\n 🗡 The team \(teamName) is composed of:")
        for character in characters {
            character.presentCharacters()
        }
    }
    
    // Main Interface
    func presentListOfCharacter() {
        print("\n ==========================================="
            + "\n Add 3 characters to your Team :"
            + "\n1. Fighter   - Life: 100  - Damages : 10 pts"
            + "\n2. Magus     - Life: 60   - Heal    : 30 pts"
            + "\n3. Colossus  - Life: 130  - Damages :  5 pts"
            + "\n4. Dwarf     - Life: 40   - Damages : 25 pts"
            + "\n5. Thief     - Life: 70   - Damages : 15 pts"
            + "\n ==========================================="
            + "\n Select a number between 1 and 5 :")
    }
    
    // Create 3 Characters
    private func createCharacters() {
        for _ in 0..<3 {
            createCharacter()
        }
    }
    
    // The player creates a Character to add to his Team
    private func createCharacter() {
        var userChoice = 0
        var characterName = ""
        
        presentListOfCharacter()
        repeat {
            if let data = readLine() {
                if let dataToInt = Int(data) {
                    userChoice = dataToInt
                }
            }
        } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4 && userChoice != 5
        
         repeat {
            print("Enter a name for your character :")
            if let data = readLine() {
                characterName = data
            }
        } while characterName == ""
        
        switch userChoice {
        case 1:
            let fighter = Fighter(name: characterName) // Add a Fighter
            characters.append(fighter)
            print("A Fighter named \(fighter.name) is added !")
        case 2:
            let magus = Magus(name: characterName) // Add a Magus
            characters.append(magus)
            print("A Magus named \(magus.name) is added !")
        case 3:
            let colossus = Colossus(name: characterName) // Add a Colossus
            characters.append(colossus)
            print("A Colossus named \(colossus.name) is added !")
        case 4:
            let dwarf = Dwarf(name: characterName) // Add a Dwarf
            characters.append(dwarf)
            print("A Dwarf named \(dwarf.name) is added !")
        case 5:
            let thief = Thief(name: characterName) // Add a Thief
            characters.append(thief)
            print("A Thief named \(thief.name) is added !")
        default:
            break
        }

       
}
}
