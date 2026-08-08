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
        
    }
    
    private func passwordTf() {
        
    }
    
    
}
