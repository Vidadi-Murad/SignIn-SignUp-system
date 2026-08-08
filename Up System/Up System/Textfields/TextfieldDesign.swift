//
//  TextfieldDesign.swift
//  Up System
//
//  Created by Vidadi Muradzada on 08.08.26.
//

import UIKit
import SnapKit


class TextFieldDesign: UITextField {
    var textFieldStyle: TextfieldBase
    private let horizontalStack = UIStackView()
    private let inputTf = UITextField()

    
    init(textFieldStyle: TextfieldBase) {
        self.textFieldStyle = textFieldStyle
        super.init(frame: .zero)
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
        self.backgroundColor = .bgColorGoogleBtn
        let tfIcon = UILabel()
        tfIcon.text = "@"
        
        horizontalStack.addArrangedSubview(tfIcon)
        horizontalStack.addArrangedSubview(inputTf)
        
    }
    
    private func passwordTf() {
        self.backgroundColor = .bgColorGoogleBtn
        let tfSymbol = UIImageView()
        tfSymbol.image = UIImage(systemName: "key.circle")
        
        horizontalStack.addArrangedSubview(tfSymbol)
        horizontalStack.addArrangedSubview(inputTf)
    }
    
    
    
    private func textfieldDesign() {
        self.layer.cornerRadius = 20
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.borderColorTf.cgColor
        self.addSubview(horizontalStack)
        horizontalStack.axis = .horizontal
        
        
        self.snp.makeConstraints{ make in
            make.height.equalTo(70)
        }
    }
}
