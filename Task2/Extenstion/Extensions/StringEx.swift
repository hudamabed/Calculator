//
//  StringEx.swift
//  GSG2021
//
//  Created by Mahmoud Al-Belbeisi on 12/1/21.
//

import Foundation
import UIKit

extension String {
    var color_: UIColor {
        return UIColor.init(named: self) ?? UIColor.init(hexString: self)
    }
    
    var colorcg_: CGColor {
        return self.color_.cgColor
    }
    
    var image_: UIImage? {
        return UIImage.init(named: self)
    }
}
