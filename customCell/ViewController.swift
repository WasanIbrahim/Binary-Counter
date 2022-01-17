//
//  ViewController.swift
//  customCell
//
//  Created by Wa ibra. on 29/02/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var totalLabel: UILabel!
    var total: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        totalLabel.text = ("total:\(total)")
        // Do any additional setup after loading the view.
    }


}


extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        
        cell.delegate = self
        
        let currentPower = pow(10, indexPath.row)
        cell.powerNumber = currentPower.int
        cell.powerLabel.text = "\(currentPower)"
    return cell
        
        
    }
    
    
}
extension ViewController: CustomeCellDelegate {
    func addToTotal(amount: Int) {
        self.total += amount
        self.totalLabel.text = "total: \(total)"
    }
    
    func subtractTotal(amount: Int) {
        self.total -= amount
        self.totalLabel.text = "total: \(total)"
    }
    
    
}
extension Decimal{
    var int : Int {
        return NSDecimalNumber(decimal: self).intValue
        
    }
    
}
