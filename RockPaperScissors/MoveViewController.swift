//
//  MoveViewController.swift
//  RockPaperScissors
//
//  Created by Shivam Satyarthi on 3/9/17.
//  Copyright © 2017 Shivam Satyarthi. All rights reserved.
//

import UIKit

class MoveViewController: UIViewController {
    
    
    @IBOutlet weak var moveImage: UIImageView!
    @IBOutlet weak var outcomeLabel: UILabel!
    
    var outcomeImage: UIImage!
    var winner: String!
    
    override func viewWillAppear(_ animated: Bool) {
       // super.viewWillAppear(animated)
       moveImage.image = outcomeImage!
        outcomeLabel.text = winner!
       // moveImage.image = #imageLiteral(resourceName: "RockCrushesScissors")
        outcomeLabel.sizeToFit()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

    }
    
    func dismiss2() {
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
