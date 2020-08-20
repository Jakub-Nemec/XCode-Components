//
//  TFView.swift
//  Components
//
//  Created by Jakub Němec on 23/07/2020.
//  Copyright © 2020 Jakub Němec. All rights reserved.
//

import UIKit
import SnapKit

class TFView: UIView {

    var textFieldView = UIView()

    func setupTFView() {
        self.addSubview(textFieldView)
        textFieldView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(200)
            make.leading.trailing.equalToSuperview().offset(0)
            make.bottom.equalToSuperview().offset(0)
        }
        textFieldView.backgroundColor = .lightGray
    }

}
