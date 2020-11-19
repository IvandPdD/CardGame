//
//  ViewController.swift
//  CardGame
//
//  Created by user177578 on 11/19/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var endGame: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        initialSet()
    }

    @IBAction func cardSelection(sender: UIButton){
        let suma: Int = Int(sender.titleLabel!.text!)! + Int(number.text!)!
        if (suma < 0 || suma > 21) {
            endGame.text = "Has perdido"
        }
        number.text = String(suma)
        
        sender.setTitle(String(Int.random(in: -7..<7)), for: .normal)
    }
    
    func initialSet(){
        number.text = String(Int.random(in: 0..<20))
        card1.setTitle(String(Int.random(in: -7..<7)), for: .normal)
        card2.setTitle(String(Int.random(in: -7..<7)), for: .normal)
    }
}

