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
    var teamsArray = [Team]()
    
    //MARK: - Methods
    
    // Showing Team 1 composition
    func TeamOne() {
        teamsArray[0].showCharactersInTeam()
    }
    
    // Showing Team 2 composition
    func TeamTwo() {
        teamsArray[1].showCharactersInTeam()
    }
    
    // Resume Characters in Teams before Battle
    func resumeTeam() {
        print("\n \n ============[🗡 Resume Team 🗡]===========")
        TeamOne()
        TeamTwo()
    }
    
    // Swap Index 0 and 1 of teamsArray
    func swapTeams() {
        teamsArray.swapAt(0, 1)
    }
    
    // The player chooses a character for the Battle
    func playerSelection() -> Character {
        
        var characterToPlayWith: Character?
        
        while characterToPlayWith == nil {
            if let userChoise = readLine() {
                switch userChoise {
                case "1":
                    characterToPlayWith = teamsArray[0].characters[0]
                case "2":
                    characterToPlayWith = teamsArray[0].characters[1]
                case "3":
                    characterToPlayWith = teamsArray[0].characters[2]
                default:
                    break
                }
                // The player can't choose a character without life point
                if let chosenCharacter = characterToPlayWith {
                    if chosenCharacter.lifePoint <= 0 {
                        print("✖️ You can't choose this character, he's dead !")
                        characterToPlayWith = nil
                    }
                }
            }
        }
        return characterToPlayWith!
    }
    
    
    //==========================================
    //MARK: - Start the Game
    //==========================================
    func start() {
        print("=============[⚔️ BattleLord ⚔️]=============")
        
        for n in 0..<2 {
            print("\n ==========================================="
                + "\n Player \(n + 1), enter a Team's name :")
            let team = Team()
            teamsArray.append(team)
            team.showCharactersInTeam()
        }
        resumeTeam()
        startBattle()
    }
    
    func startBattle() {
        print("\n ===============[🗡 Battle 🗡]==============")
        //
        TeamOne()
        print("\n Which one of your characters do you choose ? ")
        playerSelection().describeCharacter()
        TeamTwo()
        print("\n Choose a character to attack !! ")
        swapTeams()
        playerSelection().describeCharacter()
        }
    
}


