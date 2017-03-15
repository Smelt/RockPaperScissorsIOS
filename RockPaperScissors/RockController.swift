//
//  RockController.swift
//  RockPaperScissors
//
//  Created by Shivam Satyarthi on 3/15/17.
//  Copyright © 2017 Shivam Satyarthi. All rights reserved.
//

import UIKit

class RockController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var outcomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        let aiMove =  Int(arc4random_uniform(3))
        
        
        switch(aiMove){
        case 0:
            outcomeLabel.text = "It's a tie"
            outcomeLabel.sizeToFit()
            imageView.image = #imageLiteral(resourceName: "itsATie")
        case 1:
            imageView.image = #imageLiteral(resourceName: "RockCrushesScissors")
            outcomeLabel.text = "User Wins"
            outcomeLabel.sizeToFit()
        
        case 2:
            imageView.image = #imageLiteral(resourceName: "PaperCoversRock")
            outcomeLabel.text = "AI Wins"
            outcomeLabel.sizeToFit()
        default:
            print("go fuck yourself")
        }
        
    }

}
