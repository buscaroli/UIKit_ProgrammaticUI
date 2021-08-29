//
//  ViewController.swift
//  UIKit_ProgrammaticUI
//
//  Created by Matteo on 29/08/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        view.addSubview(titleImageView)
        setupLayout()
        
    }
    
    let titleImageView: UIImageView = {
        let titleImage = UIImageView(image: UIImage.init(named: "benjamin-voros-mountains"))
        titleImage.layer.cornerRadius = 10
        titleImage.layer.borderWidth = 1.0
        titleImage.layer.borderColor = UIColor.systemPurple.cgColor
        titleImage.translatesAutoresizingMaskIntoConstraints = false
        titleImage.addShadow(offset: CGSize(width: 3, height: 3), color: .systemPurple, radius: 3, opacity: 0.6)
        return titleImage
    }()
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            titleImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            titleImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2),
            titleImageView.widthAnchor.constraint(equalTo: view.widthAnchor),
            //titleImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            //titleImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }

}


