import Foundation
import UIKit

class CharactersController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var timeVar = String()
    
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
    }
    
}