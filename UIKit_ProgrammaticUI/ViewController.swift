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
        view.addSubview(quadButtonsContainerView)
        setupLayout()
        
    }
    
    let titleImageView: UIImageView = {
        let titleImage = UIImageView(image: UIImage.init(named: "benjamin-voros-mountains"))
        titleImage.layer.cornerRadius = 10
        titleImage.layer.borderWidth = 6
        titleImage.layer.borderColor = UIColor.systemPurple.cgColor
        titleImage.translatesAutoresizingMaskIntoConstraints = false
        titleImage.addShadow(offset: CGSize(width: 0, height: 0), color: .systemPurple, radius: 6, opacity: 0.7)
        return titleImage
    }()
    
    let quadButtonsContainerView: UIView = {
        let quadView = UIView()
        quadView.translatesAutoresizingMaskIntoConstraints = false
//        let btnSize = 150
        
        let btn1: UIButton = {
            let btn = UIButton()
            btn.translatesAutoresizingMaskIntoConstraints = false
            btn.setBackgroundImage(UIImage(systemName: "plus"), for: UIControl.State.normal)
            btn.layer.borderColor = UIColor.systemPurple.cgColor
            btn.tintColor = UIColor.systemPurple
            //btn.layer.frame = CGRect(x: 20, y: 0, width: btnSize, height: btnSize)
            btn.layer.borderWidth = 6.0
            btn.layer.cornerRadius = 10
            
            return btn
        }()
        
        let btn2: UIButton = {
            let btn = UIButton()
            btn.translatesAutoresizingMaskIntoConstraints = false
            btn.setBackgroundImage(UIImage(systemName: "cart"), for: UIControl.State.normal)
            btn.layer.borderColor = UIColor.systemPurple.cgColor
            btn.tintColor = UIColor.systemPurple
            //btn.layer.frame = CGRect(x: 220, y: 0, width: btnSize, height: btnSize)
            btn.layer.borderWidth = 6.0
            btn.layer.cornerRadius = 10
            
            return btn
        }()
        
        let btn3: UIButton = {
            let btn = UIButton()
            btn.translatesAutoresizingMaskIntoConstraints = false
            btn.setBackgroundImage(UIImage(systemName: "person"), for: UIControl.State.normal)
            btn.layer.borderColor = UIColor.systemPurple.cgColor
            btn.tintColor = UIColor.systemPurple
            //btn.layer.frame = CGRect(x: 20, y: 200, width: btnSize, height: btnSize)
            btn.layer.borderWidth = 6.0
            btn.layer.cornerRadius = 10
            
            return btn
        }()
        
        let btn4: UIButton = {
            let btn = UIButton()
            btn.translatesAutoresizingMaskIntoConstraints = false
            btn.setBackgroundImage(UIImage(systemName: "printer"), for: UIControl.State.normal)
            btn.layer.borderColor = UIColor.systemPurple.cgColor
            btn.tintColor = UIColor.systemPurple
            //btn.layer.frame = CGRect(x: 220, y: 200, width: btnSize, height: btnSize)
            btn.layer.borderWidth = 6.0
            btn.layer.cornerRadius = 10
            
            return btn
        }()
        
        
        func setupQuadLayout() {
            
            NSLayoutConstraint.activate([
                btn1.topAnchor.constraint(equalTo: quadView.topAnchor),
                btn1.leadingAnchor.constraint(equalTo: quadView.leadingAnchor),
                btn1.widthAnchor.constraint(equalTo: quadView.widthAnchor, multiplier: 0.48),
                btn1.heightAnchor.constraint(equalTo: btn1.widthAnchor),

                btn2.topAnchor.constraint(equalTo: btn1.topAnchor),
                btn2.leadingAnchor.constraint(equalTo: btn1.trailingAnchor),
                btn2.trailingAnchor.constraint(equalTo: quadView.trailingAnchor),
                btn2.heightAnchor.constraint(equalTo: btn1.heightAnchor),
                btn2.widthAnchor.constraint(equalTo: btn1.widthAnchor),

                btn3.topAnchor.constraint(equalTo: btn1.bottomAnchor, constant: 10),
                btn3.leadingAnchor.constraint(equalTo: quadView.leadingAnchor),
                btn3.heightAnchor.constraint(equalTo: btn1.heightAnchor),
                btn3.widthAnchor.constraint(equalTo: btn1.widthAnchor),
                btn3.bottomAnchor.constraint(equalTo: quadView.bottomAnchor),

                btn4.topAnchor.constraint(equalTo: btn3.topAnchor),
                btn4.leadingAnchor.constraint(equalTo: btn3.trailingAnchor),
                btn4.trailingAnchor.constraint(equalTo: quadView.trailingAnchor),
                btn4.heightAnchor.constraint(equalTo: btn1.heightAnchor),
                btn4.widthAnchor.constraint(equalTo: btn1.widthAnchor)
            ])
            
        }
        
        quadView.addSubview(btn1)
        quadView.addSubview(btn2)
        quadView.addSubview(btn3)
        quadView.addSubview(btn4)
        
        setupQuadLayout()
        
        return quadView
    }()
    
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            titleImageView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            titleImageView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.25),
            titleImageView.widthAnchor.constraint(equalTo: view.widthAnchor),
            
            quadButtonsContainerView.topAnchor.constraint(equalTo: titleImageView.bottomAnchor, constant: 30),
            //quadButtonsContainerView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            quadButtonsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor),
            quadButtonsContainerView.heightAnchor.constraint(equalTo: quadButtonsContainerView.heightAnchor)
        ])
    }

}


