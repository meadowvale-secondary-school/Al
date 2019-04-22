//
//  Game.Swift
//  Apple pi
//
//  Created by Al-Ansar on 2019-04-17.
//  Copyright © 2019 Al-Ansar. All rights reserved.
//

import Foundation

struct Game {
    var word:String
    var incorrectMovesRemaining:Int
    var guessedLetters: [Character]
    var formattedWord: String {
        var guessedWord = ""
        for letter in word.characters {//Adds _s where all the letters of the word are
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    mutating func playerGuessed(letter: Character) {// Gets the letter the player guessed and checks it vs. the word
        guessedLetters.append(letter)
        if !word.characters.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
}

