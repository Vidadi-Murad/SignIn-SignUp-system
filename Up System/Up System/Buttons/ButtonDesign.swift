//
//  ButtonDesign.swift
//  Up System
//
//  Created by Vidadi Muradzada on 08.08.26.
//

import UIKit
import SnapKit


class ButtonDesign: UIButton {
    var ButtonStyle: ButtonBase
    
    init(ButtonStyle: ButtonBase) {
        self.ButtonStyle = ButtonStyle
        super.init(frame: .zero)
        setupStyle()
        designBtn()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupStyle() {
        switch ButtonStyle {
        case .google:
            googleBtn()
        case .signIn:
            print("hellooooo")
        case .signUp:
            print("hellooooo")
        }
    }
    
    
    
    private func googleBtn() {
        self.backgroundColor = UIColor.bgColorGoogleBtn
        self.setTitle("Sign up with Google", for: .normal)
      
        self.titleLabel?.font = UIFont(name:"DMSans-Bold",size:16)
    }
    
    
    private func designBtn() {
        self.layer.cornerRadius = 20
        
        self.snp.makeConstraints{ make in
            make.height.equalTo(70)
        }
    }
    
}
