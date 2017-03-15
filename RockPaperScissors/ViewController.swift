//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Shivam Satyarthi on 3/3/17.
//  Copyright © 2017 Shivam Satyarthi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    enum MoveType: Int {
        case rock = 0, paper, scissors
 
    }
    

    @IBAction func playersMove(_ sender: UIButton) {

        switch(MoveType(rawValue: sender.tag)!){
            
        case .rock:
            aiPlay(MoveType.rock)
            
        case .paper:
            aiPlay(MoveType.paper)
            
        case .scissors:
            print("in scissors case")
           aiPlay(MoveType.scissors)
 
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "paperSegue" {
        let controller = segue.destination as! MoveViewController
        
        let aiRoll = Int(arc4random_uniform(3) )
        let aiMove = MoveType(rawValue: aiRoll)
        
        switch aiMove! {
        case MoveType.rock:
            controller.outcomeImage = #imageLiteral(resourceName: "PaperCoversRock")
            controller.winner = "You win"
        case MoveType.paper:
            controller.outcomeImage = #imageLiteral(resourceName: "itsATie")
            controller.winner = "It's a tie"
        case MoveType.scissors:
            controller.outcomeImage = #imageLiteral(resourceName: "ScissorsCutPaper")
            controller.winner = "You lose"
            
        }
    
        
        
    }
    }
    func aiPlay(_ player: MoveType){
        var controller: MoveViewController
        controller = self.storyboard?.instantiateViewController(withIdentifier: "MoveViewController") as! MoveViewController
        
        
      
        
        present(controller, animated: true, completion: nil)
        
        let aiRoll = Int(arc4random_uniform(3) )
        let aiMove = MoveType(rawValue: aiRoll)
      
        switch aiMove! {
        case MoveType.rock:
            controller.outcomeImage = #imageLiteral(resourceName: "RockCrushesScissors")
            controller.winner = "You lose"
        case MoveType.paper:
            controller.outcomeImage = #imageLiteral(resourceName: "ScissorsCutPaper")
            controller.winner = "You win"
        case MoveType.scissors:
            controller.outcomeImage = #imageLiteral(resourceName: "itsATie")
            controller.winner = "It's a tie"
        
        }
    }
    

}
