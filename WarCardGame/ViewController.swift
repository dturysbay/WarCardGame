//
//  ViewController.swift
//  WarCardGame
//
//  Created by Dinmukhambet Turysbay on 23.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func dealTapped(_ sender: UIButton) {
//        Randomize numbers for updating image views
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
//        Update image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber{
            
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        }else if leftNumber < rightNumber {
            
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
            
        }
    }
}

