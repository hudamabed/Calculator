//
//  ViewController.swift
//  Task2
//
//  Created by mac on 06/02/2022.
//

import UIKit

class ViewController: UIViewController {
    var objects = [product]()
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        setupView()
        localized()
        fetchData()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }


    @IBAction func AddNewItem(_ sender: Any) {
        let vc = UIStoryboard.mainStoryboard.instantiateViewController(withIdentifier: AddProductViewController._id) as! AddProductViewController
        vc.presentVC()
//        objects.append(product.init(ProductSalary: 155, ProductName: "اسم المنتج"
//                                     , Quntity: 90))
//
//        tableview.reloadData()
        
        
    }
   
}
extension ViewController {
    
    func setupView() {
        
        debugPrint("ffff")
    }
    
    func localized() {
    }
    
    func setupData() {
        objects.append(product.init(ProductSalary: 10, ProductName: "اسم المنتج"
                                    , Quntity: 1))
        objects.append(product.init(ProductSalary: 20, ProductName: "اسم المنتج"
                                    , Quntity: 20))
        objects.append(product.init(ProductSalary: 30, ProductName: "اسم المنتج"
                                   , Quntity:2))
       objects.append(product.init(ProductSalary: 5, ProductName: "اسم المنتج"
                                  , Quntity:8))
        objects.append(product.init(ProductSalary: 10, ProductName: "اسم المنتج"
                                    , Quntity: 1))
        objects.append(product.init(ProductSalary: 20, ProductName: "اسم المنتج"
                                    , Quntity: 20))
        objects.append(product.init(ProductSalary: 30, ProductName: "اسم المنتج"
                                   , Quntity:2))
       objects.append(product.init(ProductSalary: 5, ProductName: "اسم المنتج"
                                  , Quntity:8))
        self.tableview.reloadData()
    }
    
    func fetchData() {
    }
}

extension ViewController:UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CalculatorTableViewTableViewCell = tableView.dequeueReusableCell(withIdentifier: "CalculatorTableViewTableViewCell", for: indexPath) as! CalculatorTableViewTableViewCell
        let object = self.objects[indexPath.row]
        cell.object = object
        cell.configureCell()
        return cell
    }
    
}



extension ViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        debugPrint("cell is selceted")
    }
    
}
