//
//  SampleViewController.swift
//  Runner
//
//  Created by Hidenori Maehara on 2019/07/15.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

import UIKit

class SampleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
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
        
        let sample02Button = UIButton()
        sample02Button.setTitle("sample02", for: .normal)
        sample02Button.sizeToFit()
        sample02Button.addTarget(self, action: #selector(onSample02ButtonTapped(sender:)), for: .touchUpInside)
        view.addSubview(sample02Button)
        print("sample02Button.next: \(sample02Button.next?.next)")
        sample02Button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sample02Button.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            sample02Button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sample02Button.widthAnchor.constraint(equalToConstant: 100),
            sample02Button.heightAnchor.constraint(equalToConstant: 50)
            ])
    }
    
    @objc func onCloseButtonTapped(sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func onSample02ButtonTapped(sender: UIButton) {
        let sample02VC = Sample02ViewController()
        present(sample02VC, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("SampleViewController touchesBegan. next: \(next)")
        super.touchesBegan(touches, with: event)
    }
}
