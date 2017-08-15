//
//  LoginViewController.swift
//  MessagingApp
//
//  Created by Sumeet Jain on 15/08/17.
//  Copyright © 2017 Sumeet Jain. All rights reserved.
//

import UIKit

//Width Height Constant
let screenWidth = UIScreen.main.bounds.size.width
let screenHeight = UIScreen.main.bounds.size.height

class LoginViewController: UIViewController
{
    let inputTextView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        
        return view
    }()
    
    let loginRegisterButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.black
        button.setTitle("Register", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        
        return button
    }()
    
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = UIColor.clear
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "defaultProfile")
        imageView.layer.cornerRadius = 100
        imageView.layer.masksToBounds = true
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.white.cgColor
        
        return imageView
    }()
    
    let changeImageButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setAttributedTitle(NSAttributedString(string: cameraFont, attributes: [NSFontAttributeName: UIFont.glyphIconwithSize(fontSize: 25),NSForegroundColorAttributeName: UIColor.white]), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let nameTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Name"
        textfield.translatesAutoresizingMaskIntoConstraints = false
        
        return textfield
    }()
    
    let emailTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Email"
        textfield.keyboardType = .emailAddress
        textfield.translatesAutoresizingMaskIntoConstraints = false
        
        return textfield
    }()
    
    let passwordTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Password"
        textfield.isSecureTextEntry = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        
        return textfield
    }()
    
    let firstSeparatorLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.lightGray
        
        return label
    }()
    
    let secondSeparatorLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.lightGray
        
        return label
    }()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.addSubview(self.addBackgorundImage())
        let blur = UIBlurEffect(style: .dark)
        let blurView = UIVisualEffectView(effect: blur)
        blurView.frame = self.view.bounds
        blurView.autoresizingMask = [.flexibleHeight,.flexibleWidth]

        self.view.addSubview(blurView)
        
        self.view.addSubview(self.inputTextView)
        self.setInputViewContraints()
        
        self.view.addSubview(self.loginRegisterButton)
        self.setButtonConstraint()
        
        self.view.addSubview(self.profileImageView)
        self.setImageViewConstraint()
        
        self.view.addSubview(self.changeImageButton)
        self.setChangeImageButtonConstraint()
        
        self.inputTextView.addSubview(self.nameTextField)
        self.setNameTFConstraint()
        
        self.nameTextField.addSubview(self.firstSeparatorLabel)
        self.set1stSepLabelConstraint()
        
        self.inputTextView.addSubview(self.emailTextField)
        self.setEmailTFConstraint()
        
        self.inputTextView.addSubview(self.passwordTextField)
        self.setPassTFConstraint()
        
        self.passwordTextField.addSubview(self.secondSeparatorLabel)
        self.set2ndSepLabelConstraint()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        UIApplication.shared.statusBarStyle = .lightContent
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        super.viewWillDisappear(animated)
        UIApplication.shared.statusBarStyle = .default
    }
    
    func addBackgorundImage() -> UIImageView
    {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
        imageView.image = UIImage(named: "bg")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }
    
    func setInputViewContraints()
    {
        self.inputTextView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.inputTextView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.inputTextView.widthAnchor.constraint(equalToConstant: screenWidth - 30).isActive = true
        self.inputTextView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    func setButtonConstraint()
    {
        self.loginRegisterButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.loginRegisterButton.topAnchor.constraint(equalTo: self.inputTextView.bottomAnchor, constant: 15).isActive = true
        self.loginRegisterButton.widthAnchor.constraint(equalTo: self.inputTextView.widthAnchor).isActive = true
        self.loginRegisterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setImageViewConstraint()
    {
        self.profileImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.profileImageView.bottomAnchor.constraint(equalTo: self.inputTextView.topAnchor, constant: -20).isActive = true
        self.profileImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.profileImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    func setChangeImageButtonConstraint()
    {
        self.changeImageButton.leadingAnchor.constraint(equalTo: self.profileImageView.trailingAnchor).isActive = true
        self.changeImageButton.bottomAnchor.constraint(equalTo: self.profileImageView.bottomAnchor).isActive = true
        self.changeImageButton.widthAnchor.constraint(equalToConstant: 25).isActive = true
        self.changeImageButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
    func setNameTFConstraint()
    {
        self.nameTextField.leadingAnchor.constraint(equalTo: self.inputTextView.leadingAnchor, constant: 10).isActive = true
        self.nameTextField.topAnchor.constraint(equalTo: self.inputTextView.topAnchor).isActive = true
        self.nameTextField.widthAnchor.constraint(equalTo: self.inputTextView.widthAnchor).isActive = true
        self.nameTextField.heightAnchor.constraint(equalTo: self.inputTextView.heightAnchor, multiplier: 1/3).isActive = true
    }
    
    func setEmailTFConstraint()
    {
        self.emailTextField.leadingAnchor.constraint(equalTo: self.inputTextView.leadingAnchor, constant: 10).isActive = true
        self.emailTextField.topAnchor.constraint(equalTo: self.nameTextField.bottomAnchor).isActive = true
        self.emailTextField.widthAnchor.constraint(equalTo: self.inputTextView.widthAnchor).isActive = true
        self.emailTextField.heightAnchor.constraint(equalTo: self.inputTextView.heightAnchor, multiplier: 1/3).isActive = true
    }
    
    func setPassTFConstraint()
    {
        self.passwordTextField.leadingAnchor.constraint(equalTo: self.inputTextView.leadingAnchor, constant: 10).isActive = true
        self.passwordTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor).isActive = true
        self.passwordTextField.widthAnchor.constraint(equalTo: self.inputTextView.widthAnchor).isActive = true
        self.passwordTextField.heightAnchor.constraint(equalTo: self.inputTextView.heightAnchor, multiplier: 1/3).isActive = true
    }
    
    func set1stSepLabelConstraint()
    {
        self.firstSeparatorLabel.leadingAnchor.constraint(equalTo: self.inputTextView.leadingAnchor).isActive = true
        self.firstSeparatorLabel.widthAnchor.constraint(equalTo: self.inputTextView.widthAnchor).isActive = true
        self.firstSeparatorLabel.heightAnchor.constraint(equalToConstant: 1).isActive = true
        self.firstSeparatorLabel.topAnchor.constraint(equalTo: self.nameTextField.bottomAnchor).isActive = true
    }
    
    func set2ndSepLabelConstraint()
    {
        self.secondSeparatorLabel.leadingAnchor.constraint(equalTo: self.inputTextView.leadingAnchor).isActive = true
        self.secondSeparatorLabel.widthAnchor.constraint(equalTo: self.inputTextView.widthAnchor).isActive = true
        self.secondSeparatorLabel.heightAnchor.constraint(equalToConstant: 1).isActive = true
        self.secondSeparatorLabel.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor).isActive = true
    }
}
