//
//  ViewController.swift
//  IOS-HomeWork3
//
//  Created by Sevara on 5/6/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginBtnTapped(_ sender: UIButton) {
        if loginTextField.text?.isEmpty == false {
            self.performSegue(withIdentifier: "go", sender: self)
        } else {
            loginTextField.placeholder = "Заполните пожалуйста"
            loginTextField.layer.borderWidth = 1
            loginTextField.layer.borderColor = UIColor.red.cgColor
            
        }
    }


}

