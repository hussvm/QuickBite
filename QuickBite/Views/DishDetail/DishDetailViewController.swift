//
//  DishDetailViewController.swift
//  QuickBite
//
//  Created by HUSSAM on 22/8/24.
//

import UIKit

class DishDetailViewController: UIViewController {

    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var dishTitleLabel: UILabel!
    @IBOutlet weak var dishPrice: UILabel!
    @IBOutlet weak var dishDescritionLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func placeOrderBtnClicked(_ sender: Any) {
        
        
    }
}
