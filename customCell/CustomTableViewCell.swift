protocol CustomeCellDelegate: AnyObject {
    func addToTotal (amount: Int)
    func subtractTotal (amount: Int)
}


import UIKit

class CustomTableViewCell: UITableViewCell {

    weak var delegate: CustomeCellDelegate?
    var powerNumber: Int?
    @IBOutlet weak var powerLabel: UILabel!
    
    @IBAction func plusButtonPressed(_ sender: UIButton) {
        if let number = powerNumber {
            delegate?.addToTotal(amount: number)
            
        }
        
        
    }
    
    @IBAction func minusButtonPressed(_ sender: UIButton) {
        if let number = powerNumber {
            delegate?.subtractTotal(amount: number)
        
    }
    

    }}
