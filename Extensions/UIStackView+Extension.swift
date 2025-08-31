//
//  UIStackView+Extension.swift
//  ForHomeWork
//
//  Created by Ilman on 31.08.2025.
//

import UIKit

extension UIStackView {
    
    func addViews(view: UIView...) {
        view.forEach { view in
            addArrangedSubview(view)
        }
    }
}
