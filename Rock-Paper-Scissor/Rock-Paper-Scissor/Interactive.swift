//
//  Interactive.swift
//  Rock-Paper-Scissor
//
//  Created by Riley Osborne on 6/7/17.
//  Copyright © 2017 Riley Osborne. All rights reserved.
//

import Foundation

class Interactive {
    private var done: Bool = false
    private var currentInput: String = ""
    private var io = Io()
    private let inputOptions = ["q","y","r","p","s"]
    private let moves = ["rock","paper","scissors"]
    
    func go(){
        
        print("\nPress y to play or q to quit.")
        while !done {
            //Ask the user for input
            currentInput = io.getInput()
            let computerSelection = moves.random()
            switch currentInput {
                
            case "y":
                print("\nPress r for rock, p for paper, or s for scissors.")
                
            case "q":
                done = true
                print("\nExiting...")
                
            case "r":
                print("\nRock vs \(computerSelection)")
                
                switch computerSelection {
                case "rock":
                    print("You both played rock it's a draw!")
                case "paper":
                    print("Paper beats rock you lose!")
                case "scissors":
                    print("Rock beats scissors you win!")
                default:
                    break
                }
                
            case "p":
                print("\nPaper vs \(computerSelection)")
                
                switch computerSelection {
                case "rock":
                    print("Paper beats rock you win!")
                case "paper":
                    print("You both played paper it's a draw!")
                case "scissors":
                    print("Scissors beats paper you lose!")
                default:
                    break
                }
                
            case "s":
                print("\nScissors vs \(computerSelection)")
                
                switch computerSelection {
                case "rock":
                    print("Rock beats scissors you lose!")
                case "paper":
                    print("Scissors beats paper you win!")
                case "scissors":
                    print("You both played scissors it's a draw!")
                default:
                    break
                }
                
            default:
                break
            }
        }
        return
    }
}
