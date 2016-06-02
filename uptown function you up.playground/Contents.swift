//: Playground - noun: a place where people can play

import UIKit

func funkA() {
    print ("This is my first function.")
}

funkA()

func declareWinner (playerAScore: Int, playerBScore: Int) {
    
    if (playerAScore > playerBScore) {
        print ("Player A Wins!")
    } else if playerBScore > playerAScore {
        print ("Player B Wins!")
    } else {
        print ("It was a tie.")
    }
}

declareWinner(100, playerBScore: 100)