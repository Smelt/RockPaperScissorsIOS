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
    
    func aiPlay(_ player: MoveType){
        let aiRoll = Int(arc4random_uniform(3) )
        let aiMove = MoveType(rawValue: aiRoll)
      
        switch aiMove! {
        case MoveType.rock:
            print("Ai Wins")
        case MoveType.paper:
            print("Player wins")
        case MoveType.scissors:
            print("tie")
        
        }
        /*
        if(player == .scissors){
            
            switch(MoveType(rawValue: aiRoll)){
                
            case MoveType.rock:
                    print("Ai Wins")
            case MoveType.paper:
                    print("Player wins")
            case MoveType.scissors:
                    print("tie")
            
                        }
                }
        */
    }
    

}
