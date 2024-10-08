//
//  CardView.swift
//  QuickBite
//
//  Created by HUSSAM on 20/8/24.
//

import UIKit

class CardView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initailSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initailSetup()
    }
    
   private func initailSetup() {
       
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.cornerRadius = 10
        layer.shadowOpacity = 0.1
        layer.shadowRadius = 10
        cornerRadius = 10
    }
}
