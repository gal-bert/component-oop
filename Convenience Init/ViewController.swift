//
//  ViewController.swift
//  Convenience Init
//
//  Created by Gregorius Albert on 24/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    let capsuleButton = CapsuleButton()
//    let capsuleButton = CapsuleButton(title: "Hello", backgroundColor: .red)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupConstraints()
    }
    
    private func setupConstraints() {
        view.addSubview(capsuleButton)
        NSLayoutConstraint.activate([
            capsuleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            capsuleButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            capsuleButton.heightAnchor.constraint(equalToConstant: 50),
            capsuleButton.widthAnchor.constraint(equalToConstant: 200),
        ])
    }
    

}

