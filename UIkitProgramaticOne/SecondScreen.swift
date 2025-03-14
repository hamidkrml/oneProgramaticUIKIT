//
//  SecondScreen.swift
//  UIkitProgramaticOne
//
//  Created by hamid on 13.03.25.
//

import UIKit

class SecondScreen: UIViewController {

    let userNameTextfield : UITextField = {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.textColor   = .black
        textField.backgroundColor = .systemGray6
        textField.keyboardType = .emailAddress
        return textField
    }()
    let PasswordTextfield : UITextField = {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.textColor   = .black
        textField.backgroundColor = .systemGray6
        textField.isSecureTextEntry = true
        return textField
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .yellow
        button.layer.cornerRadius = 15
        button.setTitleColor(.white, for:.normal)
        
        return button
        
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    func setupUI(){
        view.backgroundColor = .systemBackground
        configureUserNameTextField()
        configureUserPasswordTextField()
        configureLoginButton()
    }
    
    
    func configureUserNameTextField() {
        view.addSubview(userNameTextfield)
        userNameTextfield.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            userNameTextfield.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            userNameTextfield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            userNameTextfield.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            userNameTextfield.heightAnchor.constraint(equalToConstant: 40)
        ])
    }

    func configureUserPasswordTextField() {
        view.addSubview(PasswordTextfield)
        PasswordTextfield.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            PasswordTextfield.topAnchor.constraint(equalTo: userNameTextfield.bottomAnchor, constant: 20),
            PasswordTextfield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            PasswordTextfield.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            PasswordTextfield.heightAnchor.constraint(equalToConstant: 40)
        ])
    }

    func configureLoginButton() {
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.setTitle("Login", for: .normal) // Bu da eksikti
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: PasswordTextfield.bottomAnchor, constant: 30),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
