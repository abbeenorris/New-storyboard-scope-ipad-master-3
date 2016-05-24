import Foundation
import UIKit

class DeadlineController: UIViewController {

    let dateFormatter = NSDateFormatter()
 
  
    
    @IBOutlet weak var deadlinePicker: UIDatePicker!
    
    
    func setDate() {
        
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
        
        deadlineVar = dateFormatter.stringFromDate(deadlinePicker.date)
        
    }
    
    @IBAction func deadlinePickerAction(sender: AnyObject) {
        
        setDate()
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       
    }
}