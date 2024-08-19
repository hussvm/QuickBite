//
//  UIView+Extension.swift
//  QuickBite
//
//  Created by HUSSAM on 17/8/24.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius : CGFloat {
            get { return self.cornerRadius }
            set { self.layer.cornerRadius = newValue }
        }
    }
