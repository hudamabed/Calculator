//
//  CalculatorTableViewTableViewCell.swift
//  Task2
//
//  Created by mac on 06/02/2022.
//

import UIKit

class CalculatorTableViewTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBOutlet weak var ProductSalary: UITextField!
    
    
    @IBOutlet weak var ProductName: UILabel!
    
    @IBOutlet weak var Quntity: UILabel!
    
    
    
    
    @IBAction func BtnMin(_ sender: Any) {
    }
    
    @IBAction func BtnMax(_ sender: Any) {
        
    }
    var object : product?
    
    func configureCell(){
        if let object = object {
            ProductSalary.text = "\(object.ProductSalary ?? 0)"
            ProductName.text = object.ProductName
            Quntity.text = "\(object.Quntity ?? 0)"
            
        }
        
    }
    
}
