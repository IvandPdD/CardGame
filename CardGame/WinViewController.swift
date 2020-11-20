//
//  WinViewController.swift
//  CardGame
//
//  Created by user177578 on 11/20/20.
//

import UIKit

class WinViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func playAgain(sender: UIButton!){
        dismiss(animated: true, completion: nil)
    }
}
