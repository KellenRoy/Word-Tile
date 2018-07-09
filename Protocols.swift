//
//  Protocols.swift
//  
//
//  Created by Kellen Roy on 7/5/18.
//

import UIKit

// model, color, numberOfDoors
//reverse, drive


protocol  Car {
    var model: String {get set}
    var color: UIColor {get set}
    var numberOfDoors: Int {get set}
    
    func drive()
    func reverse()
}


struct Sedan: Car {
    
}
