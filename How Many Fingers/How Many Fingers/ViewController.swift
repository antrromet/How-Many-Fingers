//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Antrromet on 12/12/15.
//  Copyright © 2015 Antrromet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var guessedFingersTextField: UITextField!

    @IBAction func guessButtonClicked(sender: AnyObject) {
        let selectedNumber = Int(arc4random_uniform(6))
        let guessedNumber = Int(guessedFingersTextField.text!)
        if guessedNumber == nil {
            resultsTextField.text = "Enter a valid finger number!"
        } else {
            if selectedNumber == guessedNumber {
                resultsTextField.text = "You guessed right!!!!"
            } else {
                resultsTextField.text = "Oops...better luck next time!"
            }
        }
    }
    
    @IBOutlet var resultsTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

