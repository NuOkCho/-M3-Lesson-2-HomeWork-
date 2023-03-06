//
//  SecondViewController.swift
//  (M3)Lesson-2(HomeWork)
//
//  Created by Ahmed Muvaza on 3/3/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    
    @IBAction func signUpButton(_ sender: Any) {
    }
    
    @IBAction func goToFirstViewController(_ sender: Any) {
    }
    
    private func emptyTexstField(text: UITextField) -> Bool {
        guard let empty = text.text else { return false }
        if empty.isEmpty {
            text.layer.borderColor = UIColor.red.cgColor
            text.layer.borderWidth = 3
            text.placeholder = "Заполнить поля!"
            return false
        } else {
            return true
        }
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if !emptyTexstField(text: fullNameTextField),
           !emptyTexstField(text: phoneNumberTextField),
           !emptyTexstField(text: emailTextField),
           !emptyTexstField(text: usernameTextField),
           !emptyTexstField(text: passwordTextField),
           !emptyTexstField(text: confirmPassword){
            return false
        }
        else if !emptyTexstField(text: fullNameTextField){
            return false
        }
        else if !emptyTexstField(text: phoneNumberTextField){
            return false
        }
        else if !emptyTexstField(text: emailTextField){
            return false
        }
        else if !emptyTexstField(text: usernameTextField){
            return false
        }
        else if !emptyTexstField(text: passwordTextField){
            return false
        }
        else if !emptyTexstField(text: passwordTextField){
            return false
        }
        else if !emptyTexstField(text: confirmPassword){
            return false
        }
        else {
            return true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

var num2 = 0
