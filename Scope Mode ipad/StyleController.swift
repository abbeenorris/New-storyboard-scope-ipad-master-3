import Foundation
import UIKit

class StyleController: UIViewController {
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
        if segue.identifier == "LiveAction" {
            
            styleVar = "Live Action"
            
            let destViewController = segue.destinationViewController as! CharactersController
            destViewController.projectTitleVar = projectTitleVar
            
            let clientName : CharactersController = segue.destinationViewController as! CharactersController
            clientName.clientNameVar = clientNameVar
            
            let videoType : CharactersController = segue.destinationViewController as! CharactersController
            videoType.videoTypeVar = videoTypeVar
            
            let runningTime : CharactersController = segue.destinationViewController as! CharactersController
            runningTime.timeVar = timeVar
            
            let deadline : CharactersController = segue.destinationViewController as! CharactersController
            deadline.deadlineVar = deadlineVar
            
            let videoDescription : CharactersController = segue.destinationViewController as! CharactersController
            videoDescription.descriptionVar = descriptionVar
            
            let partProduction : CharactersController = segue.destinationViewController as! CharactersController
            partProduction.partVar = partVar
            
            let style : CharactersController = segue.destinationViewController as! CharactersController
            style.styleVar = styleVar
        }
        
        if segue.identifier == "Animation" {
            
            styleVar = "Animation"
            
            let destViewController = segue.destinationViewController as! CharactersController
            destViewController.projectTitleVar = projectTitleVar
            
            let clientName : CharactersController = segue.destinationViewController as! CharactersController
            clientName.clientNameVar = clientNameVar
            
            let videoType : CharactersController = segue.destinationViewController as! CharactersController
            videoType.videoTypeVar = videoTypeVar
            
            let runningTime : CharactersController = segue.destinationViewController as! CharactersController
            runningTime.timeVar = timeVar
            
            let deadline : CharactersController = segue.destinationViewController as! CharactersController
            deadline.deadlineVar = deadlineVar
            
            let videoDescription : CharactersController = segue.destinationViewController as! CharactersController
            videoDescription.descriptionVar = descriptionVar
            
            let partProduction : CharactersController = segue.destinationViewController as! CharactersController
            partProduction.partVar = partVar
            
            let style : CharactersController = segue.destinationViewController as! CharactersController
            style.styleVar = styleVar
            

        }
        
        if segue.identifier == "MixedMedia" {
            
            styleVar = "Mixed Media"
            
            let destViewController = segue.destinationViewController as! CharactersController
            destViewController.projectTitleVar = projectTitleVar
            
            let clientName : CharactersController = segue.destinationViewController as! CharactersController
            clientName.clientNameVar = clientNameVar
            
            let videoType : CharactersController = segue.destinationViewController as! CharactersController
            videoType.videoTypeVar = videoTypeVar
            
            let runningTime : CharactersController = segue.destinationViewController as! CharactersController
            runningTime.timeVar = timeVar
            
            let deadline : CharactersController = segue.destinationViewController as! CharactersController
            deadline.deadlineVar = deadlineVar
            
            let videoDescription : CharactersController = segue.destinationViewController as! CharactersController
            videoDescription.descriptionVar = descriptionVar
            
            let partProduction : CharactersController = segue.destinationViewController as! CharactersController
            partProduction.partVar = partVar
            
            let style : CharactersController = segue.destinationViewController as! CharactersController
            style.styleVar = styleVar
        }
        
        
    }
}