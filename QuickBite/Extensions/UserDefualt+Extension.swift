//
//  UserDefualt+Extension.swift
//  QuickBite
//
//  Created by HUSSAM on 17/8/24.
//

import Foundation


extension UserDefaults {
    private enum UserDefualtsKeys: String {
        case hasOnboarded
    }
    
    var hasOnboarded: Bool {
        get { bool(forKey: UserDefualtsKeys.hasOnboarded.rawValue)}
        
        set{ set(newValue, forKey: UserDefualtsKeys.hasOnboarded.rawValue)}
    }
}
