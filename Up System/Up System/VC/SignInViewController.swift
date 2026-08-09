//
//  SignInViewController.swift
//  Up System
//
//  Created by Vidadi Muradzada on 08.08.26.
//

import UIKit
import SnapKit

class SignInViewController: UIViewController {
    
    
    private let headerText = UILabel()
    private let headerStack = UIStackView()
    private let subTitle = UILabel()
    private let googleBtn = ButtonDesign(ButtonStyle: .google)
    private let dividerLine = UIView()
    private let tfStackView = UIStackView()
    private let emailStack = UIStackView()
    private let emailLbl = UILabel()
    private let emailTf = TextFieldDesign(textFieldStyle: .email)
    private let passwordStack = UIStackView()
    private let passwordLbl = UILabel()
    private let passwordTf = TextFieldDesign(textFieldStyle: .pasword)
    private let forgetPassBtn = UIButton()
    private let signUpSentence = UIStackView()
    private let questSentence = UILabel()
    private let signUpBtn = UIButton()
    private let signInButton = ButtonDesign(ButtonStyle: .signIn)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .appBackground
        setupUI()
        setupLayout()
        setupAction()
    }
    
    
    
    private func setupUI() {
        headerText.text = "Sign in"
        headerText.textColor = .white
        headerText.font = UIFont(name:"DMSans-Bold", size: 48)
        
        subTitle.text = "Kindly enter your details below in order to sign in to your account"
        subTitle.textColor = .init(white: 1.0, alpha: 0.75)
        subTitle.font = UIFont(name:"DMSans-Medium", size: 16)
        subTitle.numberOfLines = 0
        
        dividerLine.backgroundColor = .dividerLineBg
        
        emailLbl.text = "Email address"
        emailLbl.font = UIFont(name:"DMSans-Medium",size:16)
        emailLbl.textColor = .init(white:1.0, alpha: 0.75)
        
        passwordLbl.text = "Password"
        passwordLbl.font = UIFont(name:"DMSans-Medium",size:16)
        passwordLbl.textColor = .init(white:1.0, alpha: 0.75)
        
        
        forgetPassBtn.setTitle("Forgot password?", for: .normal)
        forgetPassBtn.setTitleColor(.forgotpassbtn, for: .normal)
        forgetPassBtn.titleLabel?.font = UIFont(name:"DMSans-Bold",size:16)
        
        questSentence.text = "Don't have an account?"
        questSentence.font = UIFont(name:"DMSans-Medium",size:16)
        questSentence.textColor = .init(white:1.0, alpha:0.75)
        
        signUpBtn.setTitle("Sign up", for: .normal)
        signUpBtn.setTitleColor(.forgotpassbtn, for: .normal)
        signUpBtn.titleLabel?.font = UIFont(name:"DMSans-Bold",size:16)
        
        
    }
    
    private func setupLayout() {
        view.addSubview(headerStack)
        [headerText,subTitle].forEach{headerStack.addArrangedSubview($0)}
        headerStack.axis = .vertical
        headerStack.spacing = 12
        
        headerStack.snp.makeConstraints{ make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(64)
            make.leading.trailing.equalToSuperview().inset(30)
        }
        
        view.addSubview(googleBtn)
        googleBtn.snp.makeConstraints{ make in
            make.top.equalTo(subTitle.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(30)
        }
        
        view.addSubview(dividerLine)
        dividerLine.snp.makeConstraints{ make in
            make.top.equalTo(googleBtn.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(28)
            make.height.equalTo(1)
        }
        
        
        view.addSubview(emailStack)
        [emailLbl,emailTf].forEach{emailStack.addArrangedSubview($0)}
        emailStack.axis = .vertical
        emailStack.spacing = 10
        
        view.addSubview(passwordStack)
        [passwordLbl,passwordTf].forEach{passwordStack.addArrangedSubview($0)}
        passwordStack.axis = .vertical
        passwordStack.spacing = 10
        
        
        view.addSubview(tfStackView)
        [emailStack,passwordStack].forEach{tfStackView.addArrangedSubview($0)}
        tfStackView.axis = .vertical
        tfStackView.spacing = 30
        
        tfStackView.snp.makeConstraints{ make in
            make.top.equalTo(dividerLine.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(30)
        }
        
        
        
        view.addSubview(forgetPassBtn)
        forgetPassBtn.snp.makeConstraints{ make in
            make.top.equalTo(tfStackView.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
        }
        
        
        view.addSubview(signUpSentence)
        [questSentence,signUpBtn].forEach{signUpSentence.addArrangedSubview($0)}
        signUpSentence.axis = .horizontal
        signUpSentence.spacing = 8
      
        
    }
    
    private func setupAction() {
        
    }
}
