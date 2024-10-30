//
//  Login2.swift
//  hacker
//
//  Created by alex on 27.10.24.
//

import UIKit
class Login2ViewController: UIViewController {
    override func viewDidLoad() {   // когда вью контролер загружен в память
        super.viewDidLoad()
        setupSUbiews()    // Выстраиваем иерархию сабвьюх
        setupLayout()    // Задаем верстку
        view.backgroundColor = .white
        
        buttonLogin.addAction(UIAction(handler: { _ in
        }), for: .touchUpInside)
        
        
    }
    private lazy var textFieldLogin: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Login"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.delegate = self
        return textField
    }()
    
    private lazy var textFieldPassword: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.delegate = self
        return textField
    }()
    
    private let buttonLogin: UIButton = {   // создаем кнопку кодом
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - Private
    
    private func setupSUbiews() {
        view.addSubview(textFieldLogin)
        view.addSubview(textFieldPassword)
        view.addSubview(buttonLogin)
    }
    

    
    private func setupLayout() {   // настройка констрейна
        NSLayoutConstraint.activate([
            textFieldLogin.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            textFieldLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            textFieldLogin.heightAnchor.constraint(equalToConstant: 50),
            textFieldLogin.widthAnchor.constraint(equalToConstant: 300),
            
            textFieldPassword.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            textFieldPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            textFieldPassword.heightAnchor.constraint(equalToConstant: 50),
            textFieldPassword.widthAnchor.constraint(equalToConstant: 300),

            
            buttonLogin.topAnchor.constraint(equalTo: view.topAnchor, constant: 400),  // отступ сверху
    //        buttonLogin.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),  // отступ от низа писшем с минусом
    //        buttonLogin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150), // отступ от начала экрана
            buttonLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0), // Отцентрировали по горизонтали
            buttonLogin.heightAnchor.constraint(equalToConstant: 50),  //высота кнопки
            buttonLogin.widthAnchor.constraint(equalToConstant: 150)
            ])
    }
  
    
    
}


extension Login2ViewController: UITextFieldDelegate {
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder() // Скрыть клавиатуру по нажатию на "Return"
//        if textField == textFieldLogin {
//            print("login")
//        } else if textField == textFieldPassword {
//            print("Password")
//        }
//        print("ВВеденный логин: \(textField.text ?? "")")
//        return true
//    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.accessibilityElementDidLoseFocus()
        if textField == textFieldLogin {
            print("login")
            if textField.hasText {
                textField.borderStyle = .roundedRect
                print(textField.text)
            }
            else {
                print(textField.text)
                textField.placeholder = " You need to enter login"
                textField.borderStyle = .none
                textFieldLogin.layer.borderColor = UIColor.red.cgColor
                textFieldLogin.layer.borderWidth = 1
                textFieldLogin.layer.cornerRadius = 5
            }
                
        } else if textField == textFieldPassword {
            print("Password")
            if textField.hasText {
                textField.borderStyle = .roundedRect
                
            }
            else {
                textField.placeholder = " You need to enter Password"
                textField.borderStyle = .none
                textFieldPassword.layer.borderColor = UIColor.red.cgColor
                textFieldPassword.layer.borderWidth = 1
                textFieldPassword.layer.cornerRadius = 5
            }
        }
    }
}

