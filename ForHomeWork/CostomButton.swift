//
//  CostomButton.swift
//  ForHomeWork
//
//  Created by Ilman on 30.08.2025.
//

import UIKit

class CostomButton: UIButton {
    
    init(_ buttonTitle: String, _ buttonState: State, _ buttonColor: UIColor, _ shadowIsOn: Bool) {
        super.init(frame: .zero)
        
        setupButton(buttonTitle, buttonState, buttonColor)
        setupShadow(isOn: shadowIsOn)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupButton(
        _ buttonTitle: String,
        _ buttonState: State,
        _ buttonColor: UIColor
    ) {
        setTitle(buttonTitle, for: buttonState)
        backgroundColor = buttonColor
    }
    
    private func setupShadow(isOn: Bool) {
        if isOn {
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOffset = CGSize(width: 5, height: 5)
            layer.shadowOpacity = 0.7
            layer.shadowRadius = 10
            layer.cornerRadius = 15
        }
    }
}
