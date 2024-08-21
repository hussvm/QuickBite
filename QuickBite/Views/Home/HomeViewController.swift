//
//  HomeViewController.swift
//  QuickBite
//
//  Created by HUSSAM on 17/8/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popualerCollectionView: UICollectionView!
    
    var categories: [DishCategory] = []
    var populars: [Dish] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        
    }
    
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        
        popualerCollectionView.register(UINib(nibName: PopualerCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: PopualerCollectionViewCell.identifier)
    }
}

//MARK: - Extension

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView {
            
        case categoryCollectionView:
            return categories.count
        case popualerCollectionView:
            return populars.count
            
        default: return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case categoryCollectionView:
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(category: categories[indexPath.row])
            return cell
            
        case popualerCollectionView:
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PopualerCollectionViewCell.identifier, for: indexPath) as! PopualerCollectionViewCell
            cell.setup(dish: populars[indexPath.row])
            return cell
            
        default: return UICollectionViewCell()
        }
    }
}
