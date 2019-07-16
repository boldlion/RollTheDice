//
//  ViewController.swift
//  RollTheDice
//
//  Created by Bold Lion on 8.11.18.
//  Copyright © 2018 Bold Lion. All rights reserved.
//

import UIKit

class DiceRollVC: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeImages()
    }
    
    @IBAction func rollTapped(_ sender: UIButton) {
        changeImages()
    }
    
    func changeImages() {
        randomDiceIndex1 = Int.random(in: 0...5)
        randomDiceIndex2 = Int.random(in: 0...5)
        diceImageView1.image = UIImage(named: diceImages[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceImages[randomDiceIndex2])
    }
}

