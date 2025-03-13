//
//  ViewController.swift
//  UIkitProgramaticOne
//
//  Created by hamid on 13.03.25.
//

import UIKit

class FirstScreen: UIViewController {

    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        setupButton()
        
    }

    func setupButton(){
        view.addSubview(nextButton)
        
        nextButton.configuration = .filled()
        nextButton.configuration?.baseBackgroundColor = .systemPink
        nextButton.configuration?.title = "next"
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 200),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
            
        ])
            
       
    }
}

