//
//  ViewController.swift
//  Apple pi
//
//  Created by Al-Ansar on 2019-04-16.
//  Copyright © 2019 Al-Ansar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var listOfWords = ["lit","yeet","dab","famsquad","gangsta","cookie"]
    let incorrectMovesAllowed = 7
    var totalWins = 0{
        didSet{
            newRound()// When total wins is set, a new round is started
        }
    }
    var totalLosses = 0{
        didSet{
            newRound() // When total losses is set, a new round is started
        }
    }
    var currentGame: Game! //why did i make this a sep swift file
    
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled = false// Prevents the user from clicking the same button multiple times
        let letterString = sender.title(for: .normal)!//don't know what for: .normal means
        let letter = Character(letterString.lowercased())// Letter the user gives in
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    
    func updateGameState(){//Checks if the user has won or lost
        if currentGame.incorrectMovesRemaining == 0{
            totalLosses += 1
        } else if currentGame.word == currentGame.formattedWord{
            totalWins += 1
        }else{
            updateUI()
        }
    }
    
    func updateUI() {// Gathers the word and sets the new labels/images
        var letters = [String]()
        for letter in currentGame.formattedWord.characters {
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        
        correctWordLabel.text = wordWithSpacing
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    func enableButtons(_ status: Bool){
        for button in letterButtons{
            button.isEnabled = status
        }
    }
    func newRound(){//Configures the game for a new round
        if !listOfWords.isEmpty{
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word:newWord, incorrectMovesRemaining:incorrectMovesAllowed, guessedLetters:[])
            enableButtons(true)
            updateUI()
        }else{//The user has done all the words
            enableButtons(false)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
}

