//
//  ViewController.swift
//  Calculator
//
//  Created by João Medrado on 18/10/16.
//  Copyright © 2016 Joao Medrado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!
    var removeInitialZero = true
    
    @IBAction func clickedDigit(_ sender: UIButton) {
        let buttonText = sender.currentTitle!
        if (removeInitialZero) {
            self.display.text = buttonText
            removeInitialZero = false
        }else{
            self.display.text = self.display.text! + buttonText
            
        }
    }
    
    @IBAction func clickPi(_ sender: UIButton) {
        removeInitialZero = true
        self.display.text = String(M_PI)
    }
    
}

