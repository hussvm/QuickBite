//
//  OnBoardingCollectionViewCell.swift
//  QuickBite
//
//  Created by HUSSAM on 17/8/24.
//

import UIKit

class OnBoardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: OnBoardingCollectionViewCell.self)
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func setup(slide: OnBoardingSlide) {
        
        imageView.image = slide.image
        titleLabel.text = slide.title
        descriptionLabel.text = slide.description
        
    }
}
