//
//  TeamFactory.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 04/01/2019.
//  Copyright © 2019 Janin Culhaoglu. All rights reserved.
//

import Foundation

/**
 * The whole process of building a team is in the TeamFactory class
 */
class TeamFactory {
    //MARK: - Properties
    var teamsArray = [Team]()
    private var charactersName = [String]()
    private var teamName = ""
    
    //MARK: - Methods
    /**
     * Create two teams
     */
    func createTeams () {
        for n in 0..<2 {
            print("\n ============================================"
                + "\n Player \(n + 1)")
            if let team = createTeam() {
                teamsArray.append(team) // Add created team in teamsArray
                team.showCharactersInTeam() // Show 3 characters of created team with their descriptions
            }
        }
    }
    
    /**
     * Create a team
     */
    private func createTeam() -> Team? {
        let team = Team(name: uniqueName(isTeamName: true))
        if let characters = createCharacters() {
            team.characters = characters
        }
        return team
    }
    
    /**
     * The player enters unique name for his team
     */
    private func createTeamName() {
        teamName = uniqueName(isTeamName: true)
    }
    
    /**
     * Add name (Team or Character) and check if it is unique in the Game
     */
    private func uniqueName(isTeamName: Bool) -> String {
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
    
    /**
     * First Interface with list of characters available to compose a team
     */
    private func menuListOfCharacter() {
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
    
    /**
     * Player's choice  1, 2, 3, 4 or 5 to select Character
     */
    private func enterNumber(userChoice: inout Int) {
        repeat {
            if let data = readLine() {
                if let dataToInt = Int(data) {
                    userChoice = dataToInt
                }
            }
        } while userChoice != 1 && userChoice != 2 && userChoice != 3 && userChoice != 4 && userChoice != 5
    }
    
    /**
     * The player creates a character to add to his Team
     */
    private func createCharacter() -> Character? {
        var userChoice = 0
        var character: Character!
        menuListOfCharacter() // Show list of characters available to compose a team
        enterNumber(userChoice: &userChoice) // Player enters number to select Character from the list
        let uniqueName = self.uniqueName(isTeamName: false) // Add character's name and check if it is unique in game
        switch userChoice {
        case 1:
            character = Fighter(name: uniqueName)
            print("A Fighter named \(character.name) is added !")
        case 2:
            character = Magus(name: uniqueName)
            print("A Magus named \(character.name) is added !")
        case 3:
            character = Colossus(name: uniqueName)
            print("A Colossus named \(character.name) is added !")
        case 4:
            character = Dwarf(name: uniqueName)
            print("A Dwarf named \(character.name) is added !")
        case 5:
            character = Thief(name: uniqueName)
            print("A Thief named \(character.name) is added !")
        default:
            break
        }
        return character
    }
    
    /**
     * Create 3 Characters
     */
    private func createCharacters() -> [Character]? {
        var characters = [Character]()
        for _ in 0..<3 {
            if let character = createCharacter() {
                characters.append(character) // Add a Character
            }
        }
        return characters
    }
}
