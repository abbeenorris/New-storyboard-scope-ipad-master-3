import Foundation
import UIKit

class BudgetController: UIViewController {
  
    
    @IBOutlet weak var budgetSlider: UISlider!
    @IBOutlet weak var budgetLabel: UILabel!
    let step: Float = 100
    
    @IBAction func BudgetChanged(sender: AnyObject) {
        let currentlVaule = round(budgetSlider.value / step) * step
        budgetLabel.text = "£\(currentlVaule)"
        budgetVar = budgetLabel.text!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
           
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {


        
        
    }
}
