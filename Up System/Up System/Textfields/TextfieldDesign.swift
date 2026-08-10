//
//  TextfieldDesign.swift
//  Up System
//
//  Created by Vidadi Muradzada on 08.08.26.
//

import UIKit
import SnapKit


class TextFieldDesign: UIView {
    var textFieldStyle: TextfieldBase
    //private let horizontalStack = UIStackView()
    private let inputTf = UITextField()
    let eyeSlash = UIButton()
    
    init(textFieldStyle: TextfieldBase) {
        self.textFieldStyle = textFieldStyle
        super.init(frame: .zero)
        textfieldDesign()
        styleTf()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func styleTf() {
        switch textFieldStyle {
        case .email:
            emailTf()
        case .pasword:
            passwordTf()
        }
    }
    
    
    
    private func emailTf() {
        inputTf.keyboardType = .emailAddress
    }
    
    private func passwordTf() {
        inputTf.isSecureTextEntry = true
        eyeSlash.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        eyeSlash.setTitleColor(.signInBtnBg, for: .normal)
        eyeSlash.addTarget(self, action: #selector(changeEye), for: .touchUpInside)
        self.addSubview(eyeSlash)
        
        eyeSlash.snp.makeConstraints{ make in
            make.trailing.equalToSuperview().inset(20)
            make.size.equalTo(25)
            make.centerY.equalToSuperview()
        }
    }
    
    
    @objc func changeEye() {
        inputTf.isSecureTextEntry.toggle()
        if inputTf.isSecureTextEntry {
            eyeSlash.setImage(UIImage(systemName:"eye.slash.fill"), for: .normal)
        } else {
            eyeSlash.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        }
    }
    
    
    
    private func textfieldDesign() {
        self.layer.cornerRadius = 20
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.borderColorTf.cgColor
        self.addSubview(inputTf)
        inputTf.textColor = .white
        inputTf.font = UIFont(name:"DMSans-Regular",size:20)
        
        
        
        self.snp.makeConstraints{ make in
            make.height.equalTo(70)
        }
        inputTf.snp.makeConstraints{ make in
            make.height.equalTo(70)
            make.leading.trailing.equalToSuperview().inset(20)
        }
    }
}

