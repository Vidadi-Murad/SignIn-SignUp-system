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
        subTitle.textColor = .white
        subTitle.font = UIFont(name:"DMSans-Medium", size: 16)
        subTitle.numberOfLines = 0
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
        
    
    }
    
    private func setupAction() {
        
    }
}
