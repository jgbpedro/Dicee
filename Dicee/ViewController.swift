//
//  ViewController.swift
//  Dicee
//
//  Created by José Guilherme on 16/10/20.
//  Copyright © 2020 José Guilherme. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 3
    var randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        
        randomDiceIndex1 = Int(arc4random_uniform(6)) + 1
        randomDiceIndex2 = Int(arc4random_uniform(6)) + 1
        
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2)")
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
        
    }
    
    
}

