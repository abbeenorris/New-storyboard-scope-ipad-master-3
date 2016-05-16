import Foundation
import UIKit

class CharactersController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var timeVar = String()
    var deadlineVar = String()
    var descriptionVar = String()
    var partVar = String()
    var styleVar = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
           
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : PlatformController = segue.destinationViewController as! PlatformController
        DestViewController.projectTitleVar = projectTitleVar
        
        let clientName : PlatformController = segue.destinationViewController as! PlatformController
        clientName.clientNameVar = clientNameVar
        
        let videoType : PlatformController = segue.destinationViewController as! PlatformController
        videoType.videoTypeVar = videoTypeVar
        
        let runningTime : PlatformController = segue.destinationViewController as! PlatformController
        runningTime.timeVar = timeVar
        
        let deadline : PlatformController = segue.destinationViewController as! PlatformController
        deadline.deadlineVar = deadlineVar
        
        let videoDescription : PlatformController = segue.destinationViewController as! PlatformController
        videoDescription.descriptionVar = descriptionVar
        
        let partProduction : PlatformController = segue.destinationViewController as! PlatformController
        partProduction.partVar = partVar
        
        let style : PlatformController = segue.destinationViewController as! PlatformController
        style.styleVar = styleVar
    }
    
}