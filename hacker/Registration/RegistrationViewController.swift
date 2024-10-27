//
//  RegistrationViewController.swift
//  hacker
//
//  Created by alex on 26.10.24.
//

import UIKit

class RegistrationViewController: UIViewController{
    
    
    
    //MARK: Outlets
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var rePasswordTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var registrationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registrationButton.addTarget(self, action: #selector(didTapSaveButton), for: .touchUpInside)
        
    }
    
    @objc func didTapSaveButton(){
        print(loginTextField.text,  passwordTextField.text, rePasswordTextField.text, emailTextField.text, ageTextField.text)
    }
    

}
