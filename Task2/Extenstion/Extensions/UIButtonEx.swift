//
//  UIButtonEx.swift
//  GSG2021
//
//  Created by Mahmoud Al-Belbeisi on 12/20/21.
//

import Foundation
import UIKit

extension UIButton {
  @IBInspectable var selectedImage: UIImage? {
        set {
            self.setImage(newValue, for: .selected)
        }
        get {
            return self.image(for: .selected)
        }
    }
}
