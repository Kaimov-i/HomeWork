//
//  extension+ViewController.swift
//  ForHomeWork
//
//  Created by Ilman on 01.09.2025.
//

import UIKit

extension UIView {
    func addSubViews(views: UIView...) {
        views.forEach { view in
            addSubview(view)
        }
    }
}
