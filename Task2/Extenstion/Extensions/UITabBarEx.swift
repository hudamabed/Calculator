//
//  UITabBarEx.swift
//  GSG2021
//
//  Created by Mahmoud Al-Belbeisi on 12/20/21.
//

import Foundation
import UIKit

extension UITabBar {
    @IBInspectable var nonselectedColor: UIColor? {
        set {
            self.unselectedItemTintColor = newValue
        }
        get {
            return self.unselectedItemTintColor
        }
    }
    @IBInspectable var isRenderOriginal: Bool {
        set {
            guard newValue != false else { return }
            for (index, item) in (self.items ?? []).enumerated() {
                let image = item.selectedImage?.withRenderingMode(.alwaysOriginal)
                self.items?[index].selectedImage = image
            }
        }
        get {
            return false
        }
    }
}
