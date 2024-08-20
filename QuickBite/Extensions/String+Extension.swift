//
//  String+Extension.swift
//  QuickBite
//
//  Created by HUSSAM on 20/8/24.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
