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
    }
    
    private func setupLayout() {
        view.addSubview(headerStack)
        
    }
    
    private func setupAction() {
        
    }
}
