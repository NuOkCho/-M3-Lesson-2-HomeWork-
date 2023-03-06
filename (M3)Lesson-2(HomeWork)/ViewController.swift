//
//  ViewController.swift
//  (M3)Lesson-2(HomeWork)
//
//  Created by Ahmed Muvaza on 2/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var imageLogo: UIImageView!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var signInLabel: UILabel!
    @IBOutlet weak var employeeIdLabel: UILabel!
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var rememberMeLabel: UILabel!
    @IBOutlet weak var haveAccountLabel: UILabel!
    
    
    @IBAction func forgotPassword(_ sender: Any) {
    }
    
    @IBAction func checkMark(_ sender: Any) {
    }
    
    @IBAction func signInButton(_ sender: Any) {
    }
    
    @IBAction func signUpButton(_ sender: Any) {
    }
    
    @IBOutlet weak var showPasswordButton: UIButton!
    var isHidden = true
    @IBAction func eyesButton(_ sender: Any) {
        if isHidden {
            showPasswordButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            passwordTF.isSecureTextEntry = false
        } else {
            showPasswordButton.setImage(UIImage(systemName: "eye"), for: .normal)
            passwordTF.isSecureTextEntry = true
        }
        
        isHidden = !isHidden
        
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
        if !emptyTexstField(text: loginTF), !emptyTexstField(text: passwordTF)  {
            return false
        }
        else if !emptyTexstField(text: loginTF){
            return false
        }
        else if !emptyTexstField(text: passwordTF){
            return false
        }
        else {
            return true
        }
    }
}
