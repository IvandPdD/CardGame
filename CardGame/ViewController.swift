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

    //Al cargar la vista ejecuta la función explicada en la línea 46
    override func viewDidLoad() {
        super.viewDidLoad()

        initialSet()
    }
    
    //Acción para volver a establecer valores iniciales cuando se vuelve a la pantalla principal
    @IBAction func unwindToViewController(segue: UIStoryboardSegue) {
        DispatchQueue.global(qos: .userInitiated).async {
            DispatchQueue.main.async {
                self.initialSet()
            }
        }
    }
    
    //Acción para sleccionar uno de los números, sumarlos al principal y actualizar el número del botón con valor aleatorio. Si el número es menor o mayor a 21 se muestra la pantalla perdedora. Si el número es igual a 21 se muestra la pantalla ganadora.
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
    
    //Función para establecer los valores iniciales del juego: números aleatorios para cada uno de los botones y el número principal
    func initialSet(){
        number.text = String(Int.random(in: 0..<20))
        card1.setTitle(String(Int.random(in: -5..<7)), for: .normal)
        card2.setTitle(String(Int.random(in: -5..<7)), for: .normal)
    }
}

