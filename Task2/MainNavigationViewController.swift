//
//  MainNavigationViewController.swift
//  Task2
//
//  Created by mac on 06/02/2022.
//

import UIKit

class MainNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        AppDelegate.shared?.rootNavigationController = self
        setRoot()
        
    }
    
    func setRoot(){
        let vc = UIStoryboard.mainStoryboard.instantiateViewController(withIdentifier: ViewController._id) as! ViewController
        vc.rootPush()
    }
    

   

}
