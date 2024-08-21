//
//  PopualerCollectionViewCell.swift
//  QuickBite
//
//  Created by HUSSAM on 21/8/24.
//

import UIKit

class PopualerCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: PopualerCollectionViewCell.self)
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func setup(dish : Dish) {
        titleLabel.text = dish.name
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        priceLabel.text = dish.formattedPrice
        descriptionLabel.text = dish.description
    }
}
