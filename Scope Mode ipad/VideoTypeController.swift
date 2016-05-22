import Foundation
import UIKit

class VideoTypeController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
     override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBOutlet weak var promotionalSwitch: UISwitch!
    @IBOutlet weak var productSwitch: UISwitch!
    @IBOutlet weak var testimonialSwitch: UISwitch!
    @IBOutlet weak var virualSwitch: UISwitch!
    
    
    
    
    
    
    
    @IBAction func promotionalSwitchPressed(sender: AnyObject) {
        if promotionalSwitch.on{
            videoTypeVar = "Promitional"
            productSwitch.on = false
            testimonialSwitch.on = false
            virualSwitch.on = false
        }
    }

    @IBAction func productSwitchPressed(sender: AnyObject) {
        if productSwitch.on{
            videoTypeVar = "Product"
            
            promotionalSwitch.on = false
            testimonialSwitch.on = false
            virualSwitch.on = false
        }
    }
    
    @IBAction func testimonialSwitchPressed(sender: AnyObject) {
        if testimonialSwitch.on{
            videoTypeVar = "Testimonial"
            
            productSwitch.on = false
            promotionalSwitch.on = false
            virualSwitch.on = false
        }
    }
    @IBAction func viralSiwtch(sender: AnyObject) {
        if virualSwitch.on{
            videoTypeVar = "Viral"
            
            productSwitch.on = false
            testimonialSwitch.on = false
            promotionalSwitch.on = false
        }
    }
   
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let projectTitle : RunningTimeController = segue.destinationViewController as! RunningTimeController
        projectTitle.projectTitleVar = projectTitleVar
        
        let clientName : RunningTimeController = segue.destinationViewController as! RunningTimeController
        clientName.clientNameVar = clientNameVar
        
        let videoType : RunningTimeController = segue.destinationViewController as! RunningTimeController
        videoType.videoTypeVar = videoTypeVar
        
        
    }


    
}
