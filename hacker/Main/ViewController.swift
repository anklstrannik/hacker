//
//  ViewController.swift
//  hacker
//
//  Created by alex on 26.10.24.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlet
    @IBOutlet weak var shopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shopButton.setTitle("Shop", for: .normal)
    }

    // MARK: - Actions
    @IBAction func tapVneZony(_ sender: Any) {
    }
    @IBAction func didTapShopButton() {
        let storyboard = UIStoryboard(name: "ShopViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ShopViewController") as! ShopViewController
        present(vc, animated: true)
        
    }
    @IBAction func didTabLoginButton() {
        let storyboard = UIStoryboard(name: "LoginViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func didTapRegistrationButton() {
        let storyboard = UIStoryboard(name: "RegistrationViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "RegistrationViewController") as! RegistrationViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func didTabLogin2Button() {
        let Login2VC = Login2ViewController()
        self.navigationController?.pushViewController(Login2VC, animated: true)
    }
}

