//
//  UIViewControllerExtensions.swift
//  GSG2021
//
//  Created by Mahmoud Al-Belbeisi on 11/27/21.
//

import Foundation
import UIKit


extension UIViewController {
  func push() {
        AppDelegate.shared?.rootNavigationController?.pushViewController(self, animated: true)
    }
    
    func pop() {
        AppDelegate.shared?.rootNavigationController?.popViewController(animated: true)
    }
    
    func rootPush() {
        AppDelegate.shared?.rootNavigationController?.setViewControllers([self], animated: true)
    }
    
    func presentVC() {
        AppDelegate.shared?.rootNavigationController?.present(self, animated: true, completion: nil)
    }
    
    
    func _hideKeyboardWhenTappedAround() {
            let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController._dismissKeyboard))
            tap.cancelsTouchesInView = false
            view.addGestureRecognizer(tap)
        }

        @objc func _dismissKeyboard() {
            view.endEditing(true)
        }
    
    @IBAction func btnPopViewController(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnPopViewControllerWithoutAnimation(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
    }
    
    @IBAction func btnDismissViewController(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnDismissViewControllerWithoutAnimation(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
}
