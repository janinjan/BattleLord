//
//  Team.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

class Team {
    
    //MARK: - Properties
    var characters = [Character]()
    var teamName = ""
    
    
    //MARK: - Init
    init() {
        createTeamName()
        createCharacters()
    }
    
    
    //MARK: - Methods
    
    // The player enters name for his team
    func createTeamName() {
        repeat {
            if let data = readLine() {
                teamName = data
            }
        } while teamName == ""
    }
    
    // Show characters in team with their descriptions
    func showCharactersInTeam() {
        print("\n 🗡 Team \(teamName):")
        for character in characters {
            character.describeCharacter()
        }
    }
    
    // First Interface
    func menuListOfCharacter() {
        print("\n ============================================"
            + "\n Add 3 characters to your Team :"
            + "\n1. Fighter   - Life: 100   - Damages : 10 pts"
            + "\n2. Magus     - Life:  60   - Heal    : 30 pts"
            + "\n3. Colossus  - Life: 130   - Damages :  5 pts"
            + "\n4. Dwarf     - Life:  45   - Damages : 20 pts"
            + "\n5. Thief     - Life:  70   - Damages : 15 pts"
            + "\n ============================================"
            + "\n Select a number between 1 and 5 :")
    }
    
    // Create 3 Characters
    private func createCharacters() {
        for _ in 0..<3 {
            createCharacter()
        }
    }
    
    // The player creates a character to add to his Team
    func createCharacter() {
        var userChoice = 0
        menuListOfCharacter() // Show list of characters available to compose a team
        TeamFactory.enterNumber(userChoice: &userChoice) // Player enters number to select Character from the list
        let uniqueName = TeamFactory.uniqueCharacterName() // Add character's name and check if it is unique in game
        switch userChoice {
        case 1:
            let fighter = Fighter(name: uniqueName)
            characters.append(fighter) // Add a Fighter
            print("A Fighter named \(fighter.name) is added !")
        case 2:
            let magus = Magus(name: uniqueName)
            characters.append(magus) // Add a Magus
            print("A Magus named \(magus.name) is added !")
        case 3:
            let colossus = Colossus(name: uniqueName)
            characters.append(colossus) // Add a Colossus
            print("A Colossus named \(colossus.name) is added !")
        case 4:
            let dwarf = Dwarf(name: uniqueName)
            characters.append(dwarf) // Add a Dwarf
            print("A Dwarf named \(dwarf.name) is added !")
        case 5:
            let thief = Thief(name: uniqueName)
            characters.append(thief) // Add a Thief
            print("A Thief named \(thief.name) is added !")
        default:
            break
        }
    }
    
    // If a Character is dead, function returns true
    func isDead() -> Bool {
        var isDead = false
        for character in characters {
            if character.lifePoint == 0 {
                isDead = true
            } else {
                return false
            }
        }
        return isDead
    }
}
