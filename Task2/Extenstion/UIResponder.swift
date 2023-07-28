//
//  ui.swift
//  Task2
//
//  Created by mac on 14/02/2022.
//

import Foundation
import UIKit

extension UIResponder {
    static var _id: String {
        return String(describing: self)
    }
}
