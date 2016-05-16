import Foundation
import UIKit

class DescriptionController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var timeVar = String()
    @IBOutlet weak var descriptionText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
           
    }
   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let projectTitle : PartProductionController = segue.destinationViewController as! PartProductionController
        projectTitle.projectTitleVar = projectTitleVar
        
        let clientName : PartProductionController = segue.destinationViewController as! PartProductionController
        clientName.clientNameVar = clientNameVar
        
        let videoType : PartProductionController = segue.destinationViewController as! PartProductionController
        videoType.videoTypeVar = videoTypeVar
        
        let runningTime : PartProductionController = segue.destinationViewController as! PartProductionController
        runningTime.timeVar = timeVar
        
    }
}
