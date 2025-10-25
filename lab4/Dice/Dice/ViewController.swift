//
//  ViewController.swift
//  Dice
//
//  Created by Dilnaz Zhussipbekova on 23.10.2025.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var rightDiceImageView: UIImageView!
    override func viewDidLoad() {
        
        super.viewDidLoad()

       
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // Массив всех картинок
        let diceArray = [
            UIImage(named: "Dice1"),
            UIImage(named: "Dice2"),
            UIImage(named: "Dice3"),
            UIImage(named: "Dice4"),
            UIImage(named: "Dice5"),
            UIImage(named: "Dice6")
        ]
        
        // Генерация случайных индексов
        leftDiceImageView.image = diceArray.randomElement() ?? UIImage(named: "Dice1")
        rightDiceImageView.image = diceArray.randomElement() ?? UIImage(named: "Dice2")
    }
    
        }



