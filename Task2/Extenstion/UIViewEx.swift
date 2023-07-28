//
//  UIViewEx.swift
//  GSG2021
//
//  Created by Mahmoud Al-Belbeisi on 12/1/21.
//

import Foundation
import UIKit

extension UIView {
    
    @IBInspectable var borderColor: UIColor {
        set {
            self.layer.borderColor = newValue.cgColor
        }
        get {
            return .gray
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            self.layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            self.layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var shadowColor: UIColor {
        set {
            self.layer.shadowColor = newValue.cgColor
        }
        get {
            return .gray
        }
    }
    
    @IBInspectable var shadowOffset: CGSize {
        set {
            self.layer.shadowOffset = newValue
        }
        get {
            return self.layer.shadowOffset
        }
    }
    
    @IBInspectable var shadowOpacity: CGFloat {
        set {
            self.layer.shadowOpacity = Float.init(newValue)
        }
        get {
            return CGFloat.init(layer.shadowOpacity)
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat {
        set {
            self.layer.shadowRadius = newValue
        }
        get {
            return layer.shadowRadius
        }
    }
    
    
    func _roundCorners(isTopLeft: Bool, isTopRight: Bool, isBottomLeft: Bool, isBottomRight: Bool, radius: CGFloat) {
            var corners: CACornerMask = []


            var isTopLeftCorner: Bool = isTopLeft
            var isTopRightCorner: Bool = isTopRight
            var isBottomLeftCorner: Bool = isBottomLeft
            var isBottomRightCorner: Bool = isBottomRight

            if UserProfile.shared.isRTL {
                let tl = isTopLeftCorner
                let tr = isTopRightCorner
                let bl = isBottomLeftCorner
                let br = isBottomRightCorner

                isTopLeftCorner = tr
                isTopRightCorner = tl
                isBottomLeftCorner = br
                isBottomRightCorner = bl
            }
            if isTopLeftCorner {
                corners.insert(.layerMinXMinYCorner)
            }

            if isTopRightCorner {
                corners.insert(.layerMaxXMinYCorner)
            }
            if isBottomLeftCorner {
                corners.insert(.layerMinXMaxYCorner)
            }
            if isBottomRightCorner {
                corners.insert(.layerMaxXMaxYCorner)
            }
            layer.cornerRadius = radius
            layer.maskedCorners = corners
        }
    
}
