//
//  ViewController.swift
//  Components
//
//  Created by Jakub Němec on 18/07/2020.
//  Copyright © 2020 Jakub Němec. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .red
        setup()
    }

    func setup() {
        setupSegmentedControl()
    }

    func setupSegmentedControl() {
        let item = ["Button", "Slider", "TextField"]
        let segmentedControl = UISegmentedControl(items: item)
        view.addSubview(segmentedControl)
        segmentedControl.snp.makeConstraints { (make) in
            make.top.equalTo(view).offset(100)
            make.trailing.equalTo(view).offset(-50)
            make.leading.equalTo(view).offset(50)
            make.height.equalTo(50)
        }
        segmentedControl.backgroundColor = .white
        segmentedControl.addTarget(self, action: #selector(suitDidChange(_:)), for: .valueChanged)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.selectedSegmentIndex = 0
    }

    @objc func suitDidChange(_ segmentedControl: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            setupBV()
        case 1:
            setupSV()
        case 2:
            setupTF()
        default:
            print("Default")
        }
    }

    var buttonView = UIView()

    func setupBV() {
        setupButtonView()
        setupFirstButton()
        setupSecondButton()
    }

    func setupButtonView() {
        view.addSubview(buttonView)
        buttonView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(200)
            make.leading.trailing.equalToSuperview().offset(0)
            make.bottom.equalToSuperview().offset(0)
        }
        buttonView.backgroundColor = .black
    }

    let firstButton = UIButton()
    let secondButton = UIButton()

    func setupFirstButton() {
        buttonView.addSubview(firstButton)
        firstButton.snp.makeConstraints { (make) in
            make.top.equalTo(buttonView).offset(150)
            make.trailing.equalTo(buttonView).offset(-70)
            make.leading.equalTo(buttonView).offset(70)
            make.height.equalTo(60)
        }
        firstButton.backgroundColor = .white
        firstButton.setTitle("FirstButton", for: .normal)
        firstButton.setTitleColor(.black, for: .normal)
        firstButton.contentHorizontalAlignment = .center
        firstButton.isEnabled = false
        firstButton.isSelected = false
    }

    func setupSecondButton() {
        buttonView.addSubview(secondButton)
        secondButton.snp.makeConstraints { (make) in
            make.top.equalTo(firstButton).offset(100)
            make.trailing.equalTo(buttonView).offset(-70)
            make.leading.equalTo(buttonView).offset(70)
            make.height.equalTo(60)
        }
        secondButton.backgroundColor = .cyan
        secondButton.setTitle("SecondButton", for: .normal)
        secondButton.setTitleColor(.black, for: .normal)
        secondButton.contentHorizontalAlignment = .left
        secondButton.layer.cornerRadius = 25
        secondButton.isEnabled = true
        secondButton.isHighlighted = true
        secondButton.isSelected = true
    }

    var sliderView = UIView()
    var slider = UISlider()
    let dataLabel = UILabel()

    func setupSV() {
        setupSliderView()
        setupSlider()
        setupDataLabel()
        sliderFunc(slider)
    }

    func setupSliderView() {
        view.addSubview(sliderView)
        sliderView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(200)
            make.leading.trailing.equalToSuperview().offset(0)
            make.bottom.equalToSuperview().offset(0)
        }
        sliderView.backgroundColor = .orange
    }

    @objc func sliderFunc(_ sender: UISlider) {
        dataLabel.text = String(Int(slider.value))
    }

    func setupSlider() {
        sliderView.addSubview(slider)
        slider.backgroundColor = .white
        slider.snp.makeConstraints { (make) in
            make.top.equalTo(sliderView).offset(100)
            make.trailing.equalTo(sliderView).offset(-50)
            make.leading.equalTo(sliderView).offset(50)
            make.height.equalTo(70)
        }
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 50
        slider.addTarget(self, action: #selector(sliderFunc(_:)), for: .valueChanged)
    }

    func setupDataLabel() {
        sliderView.addSubview(dataLabel)
        dataLabel.snp.makeConstraints { (make) in
            make.top.equalTo(slider).offset(200)
            make.trailing.equalTo(sliderView).offset(-85)
            make.leading.equalTo(sliderView).offset(85)
            make.height.equalTo(100)
        }
        dataLabel.textAlignment = .center
        dataLabel.backgroundColor = .black
        dataLabel.textColor = .white
    }

    var textFieldView = UIView()
    var firstTextField = UITextField()
    var secondTextField = UITextField()
    var thirdTextField = UITextField()

    func setupTF() {
        setupTFView()
        setupFitstFT()
        setupSecondtFT()
        setupThirdtFT()
    }

    func setupTFView() {
        view.addSubview(textFieldView)
        textFieldView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(200)
            make.leading.trailing.equalToSuperview().offset(0)
            make.bottom.equalToSuperview().offset(0)
        }
        textFieldView.backgroundColor = .lightGray
    }

    func setupFitstFT() {
        textFieldView.addSubview(firstTextField)
        firstTextField.snp.makeConstraints { (make) in
            make.top.equalTo(textFieldView).offset(100)
            make.trailing.equalTo(textFieldView).offset(-45)
            make.leading.equalTo(textFieldView).offset(45)
            make.height.equalTo(70)
        }
        firstTextField.backgroundColor = .blue
        firstTextField.textAlignment = .center
        firstTextField.delegate = self
    }

    func setupSecondtFT() {
        textFieldView.addSubview(secondTextField)
        secondTextField.snp.makeConstraints { (make) in
            make.bottom.equalTo(firstTextField).offset(100)
            make.trailing.equalTo(textFieldView).offset(-45)
            make.leading.equalTo(textFieldView).offset(45)
            make.height.equalTo(70)
        }
        secondTextField.backgroundColor = .orange
        secondTextField.textAlignment = .center
        secondTextField.delegate = self
    }

    func setupThirdtFT() {
        textFieldView.addSubview(thirdTextField)
        thirdTextField.snp.makeConstraints { (make) in
            make.bottom.equalTo(secondTextField).offset(100)
            make.trailing.equalTo(textFieldView).offset(-45)
            make.leading.equalTo(textFieldView).offset(45)
            make.height.equalTo(70)
        }
        thirdTextField.backgroundColor = .yellow
        thirdTextField.textAlignment = .center
        thirdTextField.delegate = self
    }

}
