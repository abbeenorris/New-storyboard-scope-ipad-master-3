import Foundation
import UIKit

class DeadlineController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var timeVar = String()
    var deadlineVar = String()
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
        let DestViewController : DescriptionController = segue.destinationViewController as! DescriptionController
        DestViewController.projectTitleVar = projectTitleVar
        
        let clientName : DescriptionController = segue.destinationViewController as! DescriptionController
        clientName.clientNameVar = clientNameVar
        
        let videoType : DescriptionController = segue.destinationViewController as! DescriptionController
        videoType.videoTypeVar = videoTypeVar
       
        let runningTime : DescriptionController = segue.destinationViewController as! DescriptionController
        runningTime.timeVar = timeVar
        
        let deadline : DescriptionController = segue.destinationViewController as! DescriptionController
        deadline.deadlineVar = deadlineVar
        
    }
}