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
    private var teamsArray = [Team]()
    
    //MARK: - Methods
    
    // Showing Team 1 composition
    private func showTeamOne() {
        teamsArray[0].showCharactersInTeam()
    }
    
    // Showing Team 2 composition
    private func showTeamTwo() {
        teamsArray[1].showCharactersInTeam()
    }
    
    // Resume Characters in Teams before Battle
    private func resumeTeam() {
        print("\n \n =============[🗡 Resume Team 🗡]============")
        showTeamOne()
        showTeamTwo()
    }
    
    // Swap Index 0 and 1 of teamsArray
    private func swapTeams() {
        teamsArray.swapAt(0, 1)
    }
    
    // The player chooses a character for the Battle
    private func playerSelection() -> Character {
        var characterToPlay: Character?
        while characterToPlay == nil {
            if let userChoice = readLine() {
                
                switch userChoice {
                case "1":
                    characterToPlay = teamsArray[0].characters[0]
                case "2":
                    characterToPlay = teamsArray[0].characters[1]
                case "3":
                    characterToPlay = teamsArray[0].characters[2]
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
    
    // Loop for the Battle
    private func BattleLoop() {
        print("\n ================[🗡 Battle 🗡]===============")
        repeat {
                showTeamOne()
                print("\n Which one of your characters do you choose ? ")
                let myCharacter = playerSelection() // The first team selects character to play
                if let magus = myCharacter as? Magus { // If the chosen Character is Magus, can heal someone from his team
                        print("\n Which character do you want to heal?")
                        showTeamOne()
                        let characterToHeal = playerSelection()
                        magus.heal(characterToHeal: characterToHeal)
                        swapTeams()
                } else {  // Else, if the chosen Character is not Magus, attack the enemy
                        showTeamTwo()
                        print("\n Choose a character to attack ! ")
                        swapTeams()
                        let characterToAttack = playerSelection()
                        myCharacter.attack(characterToAttack: characterToAttack)
                        }
                } while endOfGame() // repeat while there is still a character alive on a team
    }
    
    
    // Check if all characters on a team are dead
    private func endOfGame() -> Bool {
        let teamIsDead = false
        for _ in teamsArray {
                // If all characters on the first team are dead, Game ends, team 2 wins
            if teamsArray[0].characters[0].lifePoint <= 0
                && teamsArray[0].characters[1].lifePoint <= 0
                && teamsArray[0].characters[2].lifePoint <= 0 {
                print("\n ▻ ⚔️ CONGRATULATIONS TEAM \(teamsArray[1].teamName) WON"
                    + "\n      You're the stronger BattleLords ⚔️")
                return teamIsDead == true
                // Else if all characters on the second team are dead, Game ends, team 1 wins
            } else if teamsArray[1].characters[0].lifePoint <= 0
                    && teamsArray[1].characters[1].lifePoint <= 0
                    && teamsArray[1].characters[2].lifePoint <= 0 {
                print("\n ▻ ⚔️ CONGRATULATIONS TEAM \(teamsArray[0].teamName) WON"
                    + "\n      You're the stronger BattleLords ⚔️")
                return teamIsDead == true
            } else { // Else Game continues
                return teamIsDead == false
            }
        }
        return teamIsDead
    }
    
    
    //=======================
    //MARK: - Start the Game
    //=======================
    func start() {
        print("==============[⚔️ BattleLord ⚔️]============="
            + "\n"
            + "\n A long time ago, men were fighting for their"
            + "\n lives."
            + "\n Some of them choose to make it their destiny,"
            + "\n they're called BattleLords...")
        for n in 0..<2 {
            print("\n ============================================"
                + "\n Player \(n + 1), enter a Team's name :")
            let team = Team()
            teamsArray.append(team)
            team.showCharactersInTeam()
        }
        resumeTeam()
        BattleLoop()
        print("\n \n END OF THE GAME")
    }
    //================
    //End of the Game
    //================
}
