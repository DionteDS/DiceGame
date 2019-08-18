//
//  ViewController.swift
//  DiceGame
//
//  Created by Dionte Silmon on 8/17/19.
//  Copyright © 2019 Dionte Silmon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    
    private let dices = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"] // Dice image assets array

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    /*
     This function will create two random numbers to be generatored,
     then the two numbers will be put into the dices array to pick out a dice number.
     */
    func diceRolled() {
        
        // Create two random numbers generators
        let randomNumber1 = Int.random(in: 0..<6)
        let randomNumber2 = Int.random(in: 0..<6)
        
        diceImage1.image = UIImage(named: dices[randomNumber1])
        diceImage2.image = UIImage(named: dices[randomNumber2])
    }
    
    
    @IBAction func rollDiceTapped(_ sender: UIButton) {
        diceRolled()
    }
    

}

