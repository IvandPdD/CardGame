//
//  LoseViewController.swift
//  CardGame
//
//  Created by user177578 on 11/20/20.
//

import UIKit

class LoseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func playAgain(sender: UIButton!){
        self.performSegue(withIdentifier: "PlayAgainLoseSegue", sender: self)
    }
}
