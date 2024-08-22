//
//  OnBoardingViewController.swift
//  QuickBite
//
//  Created by HUSSAM on 17/8/24.
//

import UIKit

class OnBoardingViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextBtn: UIButton!
    
    var slides = [OnBoardingSlide]()
    var currentPage = 0 { didSet {
        pageControl.currentPage = currentPage
        if currentPage == slides.count - 1 {
            nextBtn.setTitle("Get Started", for: .normal)
        } else {
            nextBtn.setTitle("Next", for: .normal)
        }
    }
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slides = [.init(title: "Our Food", description: "Enjoy Your Meal", image: #imageLiteral(resourceName: "slide1")),
                  .init(title: "Our Delivery", description: "Quick Deliver To Your Home", image: #imageLiteral(resourceName: "slide2"))]
        
        pageControl.numberOfPages = slides.count
    }
    
    @IBAction func nextBtnClicked(_ sender: Any) {
        
        
        if currentPage == slides.count - 1 {
            let controller = storyboard?.instantiateViewController(withIdentifier: "HomeNav") as! UINavigationController
            
            controller.modalTransitionStyle = .flipHorizontal
            controller.modalPresentationStyle = .fullScreen
            UserDefaults.standard.hasOnboarded = true
            present(controller, animated: true, completion: nil)
            
        } else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }
}

//MARK: - Extension

extension OnBoardingViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnBoardingCollectionViewCell.identifier, for: indexPath) as! OnBoardingCollectionViewCell
        cell.setup(slide: slides[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          return CGSize(width :collectionView.frame.width, height: collectionView.frame.height)
      }
      
      func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
          let width = scrollView.frame.width
          currentPage = Int(scrollView.contentOffset.x / width)
          pageControl.currentPage = currentPage
      }

}
