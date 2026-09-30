//
//  SecondView.swift
//  MSD_learning
//
//  Created by Мавлютова Альфия Айдаровна on 23.09.2026.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "SecondScreen"
        view.backgroundColor = .systemBackground
        
        let label = UILabel()
        label.text = "Second"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
        
    }
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .lightGray
    }
}


