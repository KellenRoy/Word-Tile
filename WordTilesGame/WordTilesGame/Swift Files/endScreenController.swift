//
//  endScreenController.swift
//  WordTilesGame
//
//  Created by Kellen Roy on 7/30/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit

class endScreenController: UIViewController {

    @IBOutlet weak var wordLengthLabel: UILabel!
    @IBOutlet weak var endWordLabel: UILabel!
    
    var finalWord: String = ""
    var difficulty = ""
    var isRealWord: Bool = true

    override func viewDidLoad() {
        super.viewDidLoad()
        print("\" \(finalWord) \"")
        if finalWord == "Word" {
            finalWord = ""
            endWordLabel.text = "No Answer"
            wordLengthLabel.text = "You didn't submit an answer"
        }
        if finalWord == "" || finalWord.count == 0 {
            endWordLabel.text = "No Answer"
            wordLengthLabel.text = "You didn't submit an answer"
        }
         if finalWord != "" && isRealWord == false {
            endWordLabel.text = "Your word is \(finalWord)"
            wordLengthLabel.text = "This is not a real word! Try to submit a real one next time."
        }
         if isRealWord == true && finalWord != "" {
        endWordLabel.text = "Your word is \(finalWord)"
        wordLengthLabel.text = "You made a word \(finalWord.count) letters long on \(difficulty) difficulty!"
        }
        if isRealWord == true && difficulty == "difficult" && finalWord != "" {
            endWordLabel.text = "Your word is \(finalWord)"
            wordLengthLabel.text = "You made a word \(finalWord.count) letters long on hard difficulty!"
        print(isRealWord)
            }
        if  finalWord != "" && finalWord  == "A" || finalWord == "I" {
            endWordLabel.text = "Your word is \(finalWord)"
            wordLengthLabel.text = "You made a word \(finalWord.count) letter long on \(difficulty) difficulty!"
        }

        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
}
