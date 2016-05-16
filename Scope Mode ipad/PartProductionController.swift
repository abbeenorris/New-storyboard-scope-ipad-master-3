import Foundation
import UIKit

class PartProductionController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var timeVar = String()
    var deadlineVar = String()
    var descriptionVar = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
           
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : StyleController = segue.destinationViewController as! StyleController
        DestViewController.projectTitleVar = projectTitleVar
        
        let clientName : StyleController = segue.destinationViewController as! StyleController
        clientName.clientNameVar = clientNameVar
        
        let videoType : StyleController = segue.destinationViewController as! StyleController
        videoType.videoTypeVar = videoTypeVar
        
        let runningTime : StyleController = segue.destinationViewController as! StyleController
        runningTime.timeVar = timeVar
        
        let deadline : StyleController = segue.destinationViewController as! StyleController
        deadline.deadlineVar = deadlineVar
        
        let videoDescription : StyleController = segue.destinationViewController as! StyleController
        videoDescription.descriptionVar = descriptionVar
    }
}