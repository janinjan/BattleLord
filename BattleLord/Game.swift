//
//  Game.swift
//  BattleLord
//
//  Created by Janin Culhaoglu on 17/12/2018.
//  Copyright © 2018 Janin Culhaoglu. All rights reserved.
//

import Foundation

class Game {
    //MARK: - Property
    private let teamFactory = TeamFactory() // created instance of TeamFactory class
    
    //MARK: - Methods
    /**
     * Start the Game
     */
    func start() {
        gameIntroduction()
        teamFactory.createTeams()
        resumeTeams()
        battleLoop()
        print("\n \n END OF THE GAME")
    }
    
    /**
     * Introduction text of BattleLord game
     */
    private func gameIntroduction() {
        print("==============[⚔️ BattleLord ⚔️]============="
            + "\n"
            + "\n A long time ago, men were fighting for their"
            + "\n lives."
            + "\n Some of them choose to make it their destiny,"
            + "\n they're called BattleLords...")
    }
    
    /**
     * Showing Team 1 composition
     */
    private func showTeamOne() {
        teamFactory.teamsArray[0].showCharactersInTeam()
    }
    
    /**
     * Showing Team 2 composition
     */
    private func showTeamTwo() {
        teamFactory.teamsArray[1].showCharactersInTeam()
    }
    
    /**
     * Resume Characters in Teams before Battle
     */
    private func resumeTeams() {
        print("\n \n =============[🗡 Resume Team 🗡]============")
        showTeamOne()
        showTeamTwo()
    }
    
    /**
     * Swap Index 0 and 1 of teamsArray
     */
    private func swapTeams() {
        teamFactory.teamsArray.swapAt(0, 1)
    }
    
    /**
     * The player chooses a character for the Battle
     */
    private func playerSelection() -> Character {
        var characterToPlay: Character?
        while characterToPlay == nil {
            if let userChoice = readLine() {
                
                switch userChoice {
                case "1":
                    characterToPlay = teamFactory.teamsArray[0].characters[0]
                case "2":
                    characterToPlay = teamFactory.teamsArray[0].characters[1]
                case "3":
                    characterToPlay = teamFactory.teamsArray[0].characters[2]
                default:
                    break
                }
                if let chosenCharacter = characterToPlay {
                    if chosenCharacter.lifePoint <= 0 {
                        print("✖️ You can't choose this character, he's dead !")
                        characterToPlay = nil // The player can't select a character without life point
                    }
                }
            }
        }
        return characterToPlay!
    }
    
    /**
     * A chest appears randomly inside the battleLoop(), the character get a new weapon
     */
    private func randomChest(character: Character) {
        let randomChest = Int.random(in: 0...5)
        if randomChest == 3 { // The chest appears in the game if number 3 comes out
            print("\n You're lucky ! There's a chest for you 📦!")
            switch character {
            case is Fighter:
                character.weapon = SuperSword()
            case is Magus:
                character.weapon = PurifiedYggdrasilStick()
            case is Colossus:
                character.weapon = TheServantOfTheLord()
            case is Dwarf:
                character.weapon = SuperAxe()
            case is Thief:
                character.weapon = ShadowDagger()
            default:
                break
            }
            character.weapon.describeNewWeapon(of: character)
        }
    }
    
    /**
     * Loop for the Battle
     */
    private func battleLoop() {
        print("\n ================[🗡 Battle 🗡]===============")
        repeat {
            showTeamOne()
            print("\n Which one of your characters do you choose ? ")
            let myCharacter = playerSelection() // The first team selects character to play (enter number 1, 2 or 3)
            randomChest(character: myCharacter) // If the chest appears when selecting character. He gets a new weapon
            if let magus = myCharacter as? Magus { // If the chosen Character is Magus, can heal someone from his team
                showTeamOne()
                print("\n Which character do you want to heal?")
                let characterToHeal = playerSelection() // The player chooses character to heal in Magus's team
                magus.heal(characterToHeal: characterToHeal)
                swapTeams()
            } else {  // Else, if the chosen Character is not Magus, attack the enemy
                showTeamTwo()
                print("\n Choose a character to attack ! ")
                swapTeams()
                let characterToAttack = playerSelection() // The player chooses character for attack on enemy team
                myCharacter.attack(characterToAttack: characterToAttack)
            }
        } while endOfGame() // repeat while there is still a character alive on a team
    }
    
    /**
     * Check if all characters on a team are dead
     */
    private func endOfGame() -> Bool {
        let teamIsDead = false
        for i in 0..<teamFactory.teamsArray.count {
            let team1 = teamFactory.teamsArray[i]
            let team2 = teamFactory.teamsArray[i+1]
            if team1.isDead() {   // If all characters on the first team are dead, Game ends, team 2 wins
                winMessage(teamName: team2.name)
                return teamIsDead == true
            } else if team2.isDead() { // Else if all characters on the second team are dead, Game ends, team 1 wins
                winMessage(teamName: team1.name)
                return teamIsDead == true
            } else { // Else Game continues
                return teamIsDead == false
            }
        }
        return teamIsDead
    }
    
    /**
     * Message for winners team when battle ends
     */
    private func winMessage(teamName: String) {
        print("\n ▻ ⚔️ CONGRATULATIONS TEAM \(teamName) WON"
            + "\n      You're the stronger BattleLords ⚔️")
    }
}
