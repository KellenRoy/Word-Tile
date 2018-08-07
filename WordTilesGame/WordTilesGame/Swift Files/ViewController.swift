//
//  ViewController.swift
//  WordTilesGame
//
//  Created by Kellen Roy on 7/23/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //outlets
    @IBOutlet weak var mainTitleLabel: UILabel!
    @IBOutlet weak var tLabel: UILabel!
    @IBOutlet weak var iLabel: UILabel!
    @IBOutlet weak var lLabel: UILabel!
    @IBOutlet weak var eLabel: UILabel!
    @IBOutlet weak var startGameButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "startButtonSegue", sender: self)
    }
    
    @IBAction func unwindWithSegue(_ segue: UIStoryboardSegue) {
        
    }
    
}

