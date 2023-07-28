//
//  UIApplicationEx.swift
//  GSG2021
//
//  Created by Mahmoud Al-Belbeisi on 12/20/21.
//

import Foundation
import UIKit

extension UIApplication {
    class var topViewController: UIViewController? {
        if #available(iOS 13.0, *) {
            let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
            return keyWindow?.rootViewController?.topMostViewController
        }
        return UIApplication.shared.keyWindow?.rootViewController?.topMostViewController
    }
}
