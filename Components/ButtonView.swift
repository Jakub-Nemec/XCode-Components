//
//  ButtonView.swift
//  Components
//
//  Created by Jakub Němec on 23/07/2020.
//  Copyright © 2020 Jakub Němec. All rights reserved.
//

import UIKit
import SnapKit

class ButtonView: UIView {

    var buttonView = UIView()

    func setupBV() {
        setupButtonView()
        setupFirstButton()
    }

    func setupButtonView() {
        self.addSubview(buttonView)
        buttonView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(200)
            make.leading.trailing.equalToSuperview().offset(0)
            make.bottom.equalToSuperview().offset(0)
        }
        buttonView.backgroundColor = .black
    }

    let firstButton = UIButton()

    func setupFirstButton() {
        buttonView.addSubview(firstButton)
        firstButton.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(40)
            make.trailing.equalToSuperview().offset(-50)
            make.leading.equalToSuperview().offset(50)        }
    }

}
