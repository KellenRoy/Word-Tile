//
//  difficultyController.swift
//  WordTilesGame
//
//  Created by Kellen Roy on 7/30/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit

class DifficultyController: UIViewController {

    @IBOutlet weak var difficultyLabel: UILabel!
    @IBOutlet weak var tutorialButton: UIButton!
    @IBOutlet weak var easyButton: UIButton!
    @IBOutlet weak var mediumButton: UIButton!
    @IBOutlet weak var difficultButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func setupViews() {
        tutorialButton.layer.cornerRadius = 24
    }
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        
        // 2
        if identifier == "easySegue" {
            
            let destination = segue.destination as! GameController
            destination.difficulty = "easy"
            
        }
        
        if identifier == "mediumSegue" {
                
                let destination = segue.destination as! GameController
                destination.difficulty = "medium"
                
        }
        
        if identifier == "difficultSegue" {
            
            let destination = segue.destination as! GameController
            destination.difficulty = "difficult"
        
        }
    }
}
