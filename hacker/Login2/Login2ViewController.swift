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
    
    private let buttonLogin: UIButton = {   // создаем кнопку кодом
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.setTitleColor(.blue, for: .highlighted)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - Private
    
    private func setupSUbiews() {
        view.addSubview(buttonLogin)
    }
    
    private func setupLayout() {   // настройка констрейна
        NSLayoutConstraint.activate([
            buttonLogin.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),  // отступ сверху
    //        buttonLogin.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),  // отступ от низа писшем с минусом
    //        buttonLogin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150), // отступ от начала экрана
            buttonLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0), // Отцентрировали по горизонтали
            buttonLogin.heightAnchor.constraint(equalToConstant: 50),  //высота кнопки
            buttonLogin.widthAnchor.constraint(equalToConstant: 150)
            ])
    }
    
    
}
