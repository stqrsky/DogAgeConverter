//
//  ViewController.swift
//  DogHumanAgeConverter
//
//  Created by star on 02.12.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogAgeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func convertButtonDidTap(_ sender: UIButton) {
        let dogAge = Int(dogAgeTextField.text!) ?? 0
        print(dogAge)
    }

}

