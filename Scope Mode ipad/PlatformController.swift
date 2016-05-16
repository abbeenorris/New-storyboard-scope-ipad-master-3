import Foundation
import UIKit

class PlatformController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var timeVar = String()
    var platformVar = String()
    
    
    @IBOutlet weak var tvSwitch: UISwitch!
    @IBOutlet weak var onlineSwitch: UISwitch!
    @IBOutlet weak var cinemaSwitch: UISwitch!
    @IBOutlet weak var eventSwitch: UISwitch!
    @IBOutlet weak var corporateSwitch: UISwitch!
    
    @IBAction func tvSwitchPressed(sender: AnyObject) {
        
        if tvSwitch.on {
        
            platformVar = "TV"
        
        }
    }
    
    @IBAction func onlineSwitchPressed(sender: AnyObject) {
        
        if onlineSwitch.on {
            
            platformVar = "Online"
            
        }

    }
    
    @IBAction func cinemaSwitchPressed(sender: AnyObject) {
        
        if cinemaSwitch.on {
            
            platformVar = "Cinema"
            
        }

    }
    
    @IBAction func eventSwitchPressed(sender: AnyObject) {
        
        if eventSwitch.on {
            
            platformVar = "Event"
            
        }

    }
    
    @IBAction func corportateSwitchPressed(sender: AnyObject) {
        
        if corporateSwitch.on {
            
            platformVar = "Corportate"
            
        }

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
           
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let projectTitle : BudgetController = segue.destinationViewController as! BudgetController
        projectTitle.projectTitleVar = projectTitleVar
        
        let clientName : BudgetController = segue.destinationViewController as! BudgetController
        clientName.clientNameVar = clientNameVar
        
        
        let videoType : BudgetController = segue.destinationViewController as! BudgetController
        videoType.videoTypeVar = videoTypeVar
        
        let runningTime : BudgetController = segue.destinationViewController as! BudgetController
        runningTime.timeVar = timeVar
        
        let platform : BudgetController = segue.destinationViewController as! BudgetController
        platform.platformVar = platformVar
        
    }
}