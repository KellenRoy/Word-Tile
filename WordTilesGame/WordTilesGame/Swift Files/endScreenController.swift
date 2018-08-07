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
    var isRealWord: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        if finalWord == "Word" {
            finalWord = ""
        }
        if finalWord == "" {
            endWordLabel.text = "No Answer"
            wordLengthLabel.text = "You didn't submit an answer"
        }
        else if finalWord != "" && isRealWord == false {
            endWordLabel.text = "Your word is \(finalWord)"
            wordLengthLabel.text = "This is not a real word! Try to submit a real one next time."
        }
        else if finalWord.count == 1 {
            endWordLabel.text = "Your word is \(finalWord)"
            wordLengthLabel.text = "You made a word \(finalWord.count) letter long on \(difficulty) difficulty!"
        }
        else if isRealWord == true {
        endWordLabel.text = "Your word is \(finalWord)"
        wordLengthLabel.text = "You made a word \(finalWord.count) letters long on \(difficulty) difficulty!"
        }
        else {
            endWordLabel.text = "Your word is \(finalWord)"
            wordLengthLabel.text = "You made a word \(finalWord.count) letters long on hard difficulty!"
        print(isRealWord)
            }
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
}
