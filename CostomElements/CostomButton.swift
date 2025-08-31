//
//  CostomButton.swift
//  ForHomeWork
//
//  Created by Ilman on 30.08.2025.
//

import UIKit

struct StileOfButton {
    let title: String
    let color: UIColor
    var shadowIsOn: Bool = false
}

class CostomButton: UIButton {
    
    init(stile: StileOfButton, state: State) {
        super.init(frame: .zero)
        
        setupShadow(isOn: stile.shadowIsOn)
        setupButton(title: stile.title, state: state, color: stile.color)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupButton(
        title: String,
        state: State,
        color: UIColor
    ) {
        setTitle(title, for: state)
        backgroundColor = color
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
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let shadowPaht = UIBezierPath(rect: bounds)
        layer.shadowPath = shadowPaht.cgPath
    }
    
}
