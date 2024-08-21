//
//  ChiefCollectionViewCell.swift
//  QuickBite
//
//  Created by HUSSAM on 21/8/24.
//

import UIKit

class ChiefCollectionViewCell: UICollectionViewCell {

    static let identifier = String(describing: ChiefCollectionViewCell.self)
    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    private func setup(dish: Dish) {
        
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLabel.text = dish.name
        descriptionLabel.text = dish.description
        priceLabel.text = dish.formattedPrice
        
    }
}
