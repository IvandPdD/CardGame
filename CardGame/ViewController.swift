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

    override func viewDidLoad() {
        super.viewDidLoad()

        initialSet()
    }
    
    @IBAction func unwindToViewController(segue: UIStoryboardSegue) {
        DispatchQueue.global(qos: .userInitiated).async {
            DispatchQueue.main.async {
                self.viewDidAppear(true)
            }
        }
    }

    @IBAction func cardSelection(sender: UIButton){
        let suma: Int = Int(sender.titleLabel!.text!)! + Int(number.text!)!
        if (suma < 0 || suma > 21) {
            self.performSegue(withIdentifier: "LoseSegue", sender: self)
        }
        if(suma == 21){
            self.performSegue(withIdentifier: "WinSegue", sender: self)
        }
        number.text = String(suma)
        
        sender.setTitle(String(Int.random(in: -5..<7)), for: .normal)
    }
    
    func initialSet(){
        number.text = String(Int.random(in: 0..<20))
        card1.setTitle(String(Int.random(in: -5..<7)), for: .normal)
        card2.setTitle(String(Int.random(in: -5..<7)), for: .normal)
    }
}

