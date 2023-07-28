//
//  AddProductViewController.swift
//  Task2
//
//  Created by mac on 14/02/2022.
//

import UIKit

class AddProductViewController: UIViewController {

    @IBOutlet weak var subView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.subView._roundCorners(isTopLeft: true, isTopRight: true, isBottomLeft: false, isBottomRight: false, radius: 30)
        
    }
    



}
