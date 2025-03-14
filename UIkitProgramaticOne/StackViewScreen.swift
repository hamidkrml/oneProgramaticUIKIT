//
//  StackViewScreen.swift
//  UIkitProgramaticOne
//
//  Created by hamid on 14.03.25.
//

import UIKit

class StackViewScreen: UIViewController {
lazy var  userNameTextfield : UITextField = {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.textColor   = .black
        textField.backgroundColor = .systemGray6
        textField.keyboardType = .emailAddress
        return textField
    }()
    lazy var PasswordTextfield : UITextField = {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.textColor   = .black
        textField.backgroundColor = .systemGray6
        textField.isSecureTextEntry = true
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .yellow
        button.layer.cornerRadius = 15
        button.setTitleColor(.white, for:.normal)
        button.setTitle("Login", for: .normal)
        return button
        
    }()
    
    lazy var StackViewScreen: UIStackView = {
        let StackView = UIStackView(arrangedSubviews: [userNameTextfield,PasswordTextfield,loginButton])
        StackView.axis = .vertical
        StackView.spacing = 40
    
        return StackView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        view.backgroundColor = .systemBackground
        configureStackView()
    }
    
    func configureStackView(){
        view.addSubview(StackViewScreen)
        userNameTextfield.heightAnchor.constraint(equalToConstant: 50).isActive = true
        PasswordTextfield.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        StackViewScreen.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            StackViewScreen.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            StackViewScreen.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            StackViewScreen.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
           
        ])
    }
    
}
