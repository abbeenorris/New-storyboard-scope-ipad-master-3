// Hi kt, the code on this page doens't work, it wont pass the data in projectTitleVar(the data comes from ProjectNameConttroller and is passed through all the controllers up until this point) the problem is that we have 3 buttons on the page all going to different view controllers so i put the code to pass the data to the correct view controller into a action button which is linked to the right segue but this doesn't work. Could you ask Kyle about this? thanks Sam.

import Foundation
import UIKit

class StyleController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var timeVar = String()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
           
    
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "LiveAction" {
            let destViewController = segue.destinationViewController as! CharactersController
            destViewController.projectTitleVar = projectTitleVar
            
            let clientName : CharactersController = segue.destinationViewController as! CharactersController
            clientName.clientNameVar = clientNameVar
            
            let videoType : CharactersController = segue.destinationViewController as! CharactersController
            videoType.videoTypeVar = videoTypeVar
            
            let runningTime : CharactersController = segue.destinationViewController as! CharactersController
            runningTime.timeVar = timeVar
        }
        
        if segue.identifier == "Animation" {
            let destViewController = segue.destinationViewController as! CharactersController
            destViewController.projectTitleVar = projectTitleVar
            

        }
        
        if segue.identifier == "MixedMedia" {
            let destViewController = segue.destinationViewController as! CharactersController
            destViewController.projectTitleVar = projectTitleVar
        }
        
        
    }
}