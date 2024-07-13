//
//  LoginViewController.swift
//  LoginMVVMUnitTest
//
//  Created by Nitesh Sharma on 13/07/24.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    var viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        let response = viewModel.ValidateLogin(emailTextField.text, password: passwordTextField.text)
        ShowAlert(response.rawValue)
    }
    
}
