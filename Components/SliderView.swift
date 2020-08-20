//
//  SliderView.swift
//  Components
//
//  Created by Jakub Němec on 23/07/2020.
//  Copyright © 2020 Jakub Němec. All rights reserved.
//

import UIKit
import SnapKit

class SliderView: UIView {

    var sliderView = UIView()

    func setupSliderView() {
        self.addSubview(sliderView)
        sliderView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(200)
            make.leading.trailing.equalToSuperview().offset(0)
            make.bottom.equalToSuperview().offset(0)
        }
        sliderView.backgroundColor = .cyan
    }

}
