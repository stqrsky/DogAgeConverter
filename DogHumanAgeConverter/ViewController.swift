//
//  ViewController.swift
//  DogHumanAgeConverter
//
//  Created by star on 02.12.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogAgeTextField: UITextField!
    
    @IBOutlet weak var humanAgeLabel: UILabel!
    
    @IBOutlet weak var convertButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        convertButton.layer.cornerRadius = 15
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    
    @IBAction func convertButtonDidTap(_ sender: UIButton) {
        let dogAge = Int(dogAgeTextField.text!) ?? 0
        
        if dogAge <= 20 {
            humanAgeLabel.text = "Your dog is \(dogAge * 7) in human years old!"
        } else {
            humanAgeLabel.text = "Please give a realistic dog age."
            
        }
    }
    
    @IBAction func refreshButtonDidTap(_ sender: UIBarButtonItem) {
        dogAgeTextField.text = ""
        humanAgeLabel.text = "Please enter your dog years!"
        view.endEditing(true)
    }
    
    
}

