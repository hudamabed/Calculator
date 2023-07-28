//
//  UserProfile.swift
//  Task2
//
//  Created by mac on 14/02/2022.
//

import Foundation
import UIKit

class UserProfile {
    static let shared = UserProfile()
    
    var isRTL: Bool {
        return UIApplication.shared.userInterfaceLayoutDirection == .rightToLeft
    }
}
