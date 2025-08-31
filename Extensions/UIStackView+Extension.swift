//
//  UIStackView+Extension.swift
//  ForHomeWork
//
//  Created by Ilman on 31.08.2025.
//

import UIKit

extension UIStackView {
    
    func addViews(views: UIView...) {
        views.forEach { view in
            addArrangedSubview(view)
        }
    }
}
