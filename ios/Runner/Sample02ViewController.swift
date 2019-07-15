//
//  Sample02ViewController.swift
//  Runner
//
//  Created by Hidenori Maehara on 2019/07/15.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

import UIKit

class Sample02ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        let closeButton = UIButton()
        closeButton.setTitle("close", for: .normal)
        closeButton.sizeToFit()
        closeButton.addTarget(self, action: #selector(onCloseButtonTapped(sender:)), for: .touchUpInside)
        view.addSubview(closeButton)
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            closeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            closeButton.widthAnchor.constraint(equalToConstant: 100),
            closeButton.heightAnchor.constraint(equalToConstant: 50)
            ])
    }
    
    @objc func onCloseButtonTapped(sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Sample02ViewController touces Began!!!")
        //super.touchesBegan(touches, with: event)
    }

}
