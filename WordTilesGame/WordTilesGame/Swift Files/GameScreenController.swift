//
//  GameScreen.swift
//  WordTilesGame
//
//  Created by Kellen Roy on 7/24/18.
//  Copyright © 2018 Make School. All rights reserved.
//
import UIKit


class GameController: UIViewController {
    
    @IBOutlet weak var wordLabel: UILabel!
    //@IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    @IBOutlet weak var button13: UIButton!
    @IBOutlet weak var button14: UIButton!
    @IBOutlet weak var button15: UIButton!
    @IBOutlet weak var button16: UIButton!
    @IBOutlet weak var submitWordButton: UIButton!
    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var undoButton: UIButton!
    
    
    var buttonArray: [UIButton] = []
    
    let consanantArray: [String] = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
    let vowelArray: [String] = ["A", "E", "I", "O", "U"]
    var gameArray: [String] = []
    var undoLetersArray: [String] = []
    var undoButtonArray: [UIButton] = []
    var difficulty: String = ""
    var buttonTapped = false
    var isRealWord: Bool = false
    var tempLetter: String = ""
    var tempButton: UIButton?
    
    //var counter = 60
    var buttonTappedArray = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        wordLabel.text = "Word"
        createGameBoard()
        print(gameArray)
        print(difficulty)
        
  //      var timer = Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(UIMenuController.update), userInfo: nil, repeats: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func createGameBoard() {
        
        buttonArray.append(button1)
        buttonArray.append(button2)
        buttonArray.append(button3)
        buttonArray.append(button4)
        buttonArray.append(button5)
        buttonArray.append(button6)
        buttonArray.append(button7)
        buttonArray.append(button8)
        buttonArray.append(button9)
        buttonArray.append(button10)
        buttonArray.append(button11)
        buttonArray.append(button12)
        buttonArray.append(button13)
        buttonArray.append(button14)
        buttonArray.append(button15)
        buttonArray.append(button16)
      
        difficultySelector()
        
    }
    
    
    
    @IBAction func button1Pressed(_ sender: Any) {
        buttonPressed(button: button1, bool: buttonTappedArray[0])
        buttonTappedArray[0] = true
        button1.setTitle("", for: .normal)
        gameArray[0] = ""
    }
    
    @IBAction func button2Pressed(_ sender: Any) {
        buttonPressed(button: button2, bool: buttonTappedArray[1])
        buttonTappedArray[1] = true
        button2.setTitle("", for: .normal)
        gameArray[1] = ""
        print(gameArray)
    }
    
    @IBAction func button3Pressed(_ sender: Any) {
        buttonPressed(button: button3, bool: buttonTappedArray[2])
        buttonTappedArray[2] = true
        button3.setTitle("", for: .normal)
        gameArray[2] = ""
        print(gameArray)
    }
    
    @IBAction func button4Pressed(_ sender: Any) {
        buttonPressed(button: button4, bool: buttonTappedArray[3])
        buttonTappedArray[3] = true
        button4.setTitle("", for: .normal)
        gameArray[3] = ""
        print(gameArray)
    }
    
    @IBAction func button5Pressed(_ sender: Any) {
        buttonPressed(button: button5, bool: buttonTappedArray[4])
        buttonTappedArray[4] = true
        button5.setTitle("", for: .normal)
        gameArray[4] = ""
        print(gameArray)
    }
    
    @IBAction func button6Pressed(_ sender: Any) {
        buttonPressed(button: button6, bool: buttonTappedArray[5])
        buttonTappedArray[5] = true
        button6.setTitle("", for: .normal)
        gameArray[5] = ""
    }
    
    @IBAction func button7Pressed(_ sender: Any) {
        buttonPressed(button: button7, bool: buttonTappedArray[6])
        buttonTappedArray[6] = true
        button7.setTitle("", for: .normal)
        gameArray[6] = ""
    }
    
    @IBAction func button8Pressed(_ sender: Any) {
        buttonPressed(button: button8, bool: buttonTappedArray[7])
        buttonTappedArray[7] = true
        button8.setTitle("", for: .normal)
        gameArray[7] = ""
    }
    
    @IBAction func button9Pressed(_ sender: Any) {
        buttonPressed(button: button9, bool: buttonTappedArray[8])
        buttonTappedArray[8] = true
        button9.setTitle("", for: .normal)
        gameArray[8] = ""
    }
    
    @IBAction func buttonPressed10(_ sender: Any) {
        buttonPressed(button: button10, bool: buttonTappedArray[9])
        buttonTappedArray[9] = true
        button10.setTitle("", for: .normal)
        gameArray[9] = ""
    }
    
    @IBAction func buttonPressed11(_ sender: Any) {
        buttonPressed(button: button11, bool: buttonTappedArray[10])
        buttonTappedArray[10] = true
        button11.setTitle("", for: .normal)
        gameArray[10] = ""
    }
    
    @IBAction func buttonPressed12(_ sender: Any) {
        buttonPressed(button: button12, bool: buttonTappedArray[11])
        buttonTappedArray[11] = true
        button12.setTitle("", for: .normal)
        gameArray[11] = ""
    }
    
    @IBAction func buttonPressed13(_ sender: Any) {
        buttonPressed(button: button13, bool: buttonTappedArray[12])
        buttonTappedArray[12] = true
        button13.setTitle("", for: .normal)
        gameArray[12] = ""
    }
    
    @IBAction func buttonPresed14(_ sender: Any) {
        buttonPressed(button: button14, bool: buttonTappedArray[13])
        buttonTappedArray[13] = true
        button14.setTitle("", for: .normal)
        gameArray[13] = ""
    }
    
    @IBAction func buttonPressed15(_ sender: Any) {
        buttonPressed(button: button15, bool: buttonTappedArray[14])
        buttonTappedArray[14] = true
        button15.setTitle("", for: .normal)
        gameArray[14] = ""
    }
    
    @IBAction func buttonPressed16(_ sender: Any) {
        buttonPressed(button: button16, bool: buttonTappedArray[15])
        buttonTappedArray[15] = true
        button16.setTitle("", for: .normal)
        gameArray[15] = ""
    }
    
    
    func buttonPressed(button: UIButton, bool: Bool)  {
        var buttonText: String = (button.titleLabel?.text)!
        
        if buttonTapped == false {
            wordLabel.text = ""
            buttonTapped = true
        }

        if bool == true {
            buttonText = ""
        }
        
        if wordLabel.text == "Word" {
            wordLabel.text = ""
        }
        wordLabel.text?.append(buttonText)
        fillUndoArrays(button: button, text: buttonText)
        print(wordLabel.text!)
        if wordLabel.text == "" {
            wordLabel.text = "Word"
        }
      //  button.setTitle("", for: .normal)
    }
   
    @IBAction func refreshButtonPressed(_ sender: Any) {
        wordLabel.text = "Word"
        buttonTapped = false
        wipeBoard()
        createGameBoard()
    }
    func wipeBoard() {
        button1.setTitle("", for: .normal)
        button2.setTitle("", for: .normal)
        button3.setTitle("", for: .normal)
        button4.setTitle("", for: .normal)
        button5.setTitle("", for: .normal)
        button6.setTitle("", for: .normal)
        button7.setTitle("", for: .normal)
        button8.setTitle("", for: .normal)
        button9.setTitle("", for: .normal)
        button10.setTitle("", for: .normal)
        button11.setTitle("", for: .normal)
        button12.setTitle("", for: .normal)
        button13.setTitle("", for: .normal)
        button14.setTitle("", for: .normal)
        button15.setTitle("", for: .normal)
        button16.setTitle("", for: .normal)
        buttonTappedArray[0] = false
        buttonTappedArray[1] = false
        buttonTappedArray[2] = false
        buttonTappedArray[3] = false
        buttonTappedArray[4] = false
        buttonTappedArray[5] = false
        buttonTappedArray[6] = false
        buttonTappedArray[7] = false
        buttonTappedArray[8] = false
        buttonTappedArray[9] = false
        buttonTappedArray[10] = false
        buttonTappedArray[11] = false
        buttonTappedArray[12] = false
        buttonTappedArray[13] = false
        buttonTappedArray[14] = false
        buttonTappedArray[15] = false
        buttonArray = []
        gameArray = []
        undoLetersArray = []
        undoButtonArray = []
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        if identifier == "submitWordSegue" {
            let destination = segue.destination as! endScreenController
            isRealWord = checkIfRealWord()
            destination.isRealWord = isRealWord
            print(isRealWord)
            destination.finalWord = wordLabel.text!
            destination.difficulty = difficulty
        }
        
    }
        
    
    func difficultySelector() {
        
        if difficulty == "easy" {
            
            for _ in 0...9 {
                let randomConsanant = Int(arc4random_uniform(UInt32(consanantArray.count)))
                gameArray.append(consanantArray[randomConsanant])
            }
            
            for _ in 0...5 {
                gameArray.insert(vowelArray[Int(arc4random_uniform(UInt32(vowelArray.count)))], at: Int(arc4random_uniform(UInt32(gameArray.count))))
            }
            
            for i in 0...15 {
                buttonArray[i].setTitle(gameArray[i], for: UIControlState.normal)
                
            }
            
            print(gameArray)
            
        }
        
        if difficulty == "medium" {
            
            for _ in 0...11 {
                let randomConsanant = Int(arc4random_uniform(UInt32(consanantArray.count)))
                gameArray.append(consanantArray[randomConsanant])
            }
            
            for _ in 0...3 {
                gameArray.insert(vowelArray[Int(arc4random_uniform(UInt32(vowelArray.count)))], at: Int(arc4random_uniform(UInt32(gameArray.count))))
            }
            
            for i in 0...15 {
                buttonArray[i].setTitle(gameArray[i], for: UIControlState.normal)
                
            }
            
            print(gameArray)
            
        }
        
        if difficulty == "difficult" {
            
            for _ in 0...13 {
                let randomConsanant = Int(arc4random_uniform(UInt32(consanantArray.count)))
                gameArray.append(consanantArray[randomConsanant])
            }
            
            for _ in 0...1 {
                gameArray.insert(vowelArray[Int(arc4random_uniform(UInt32(vowelArray.count)))], at: Int(arc4random_uniform(UInt32(gameArray.count))))
            }
            
            for i in 0...15 {
                print(gameArray[i])
                buttonArray[i].setTitle(gameArray[i], for: UIControlState.normal)
                
            }
          //   difficulty = "hard"
            print(gameArray)
            
            
        }
    }
    
    func checkIfRealWord() -> Bool {

        if UIReferenceLibraryViewController.dictionaryHasDefinition(forTerm: wordLabel.text!) {
          return true
        }
        
        return false
    }
    
    func fillUndoArrays(button: UIButton, text: String) {
        undoButtonArray.append(button)
        undoLetersArray.append(text)
    }
    
    @IBAction func undoButtonPressed(_ sender: Any) {
    print(undoLetersArray)
    print(undoButtonArray)
        if buttonArray != [] && undoButtonArray != []{
            let tempNumber = buttonArray.index(of: undoButtonArray[undoButtonArray.count-1])
            buttonTappedArray[tempNumber!] = false
        }
    let returnedLetter = undoLetersArray.popLast()
    let returnedButton = undoButtonArray.popLast()
    returnedButton?.setTitle(returnedLetter, for: .normal)
        if wordLabel.text != "Word" && wordLabel.text != ""
            {
                wordLabel.text?.removeLast()
            }
        if wordLabel.text == "" {
                wordLabel.text = "Word"
            }
    
    print(undoLetersArray)
    print(undoButtonArray)
    }
    
    
    
    
    
    
    // timer code
    
/*    func updateCounter() {
        
        if counter > 0 {
            counter -= 1
            timerLabel.text = "\(counter)"
            print("\(counter) seconds left")
        }
        if counter == 0 {
            performSegue(withIdentifier: "submitWordSegue", sender: Any?.self)
        }
    }
    */
    
}
