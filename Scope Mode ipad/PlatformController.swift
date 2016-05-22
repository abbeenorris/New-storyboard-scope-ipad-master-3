import Foundation
import UIKit

class PlatformController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var timeVar = String()
    var platformVar = String()
    var deadlineVar = String()
    var descriptionVar = String()
    var partVar = String()
    var styleVar = String()
    var characterVar = String()
    var settingVar = String()
    
    
    @IBOutlet weak var tvSwitch: UISwitch!
    @IBOutlet weak var onlineSwitch: UISwitch!
    @IBOutlet weak var cinemaSwitch: UISwitch!
    @IBOutlet weak var eventSwitch: UISwitch!
    @IBOutlet weak var corporateSwitch: UISwitch!
    
    @IBAction func tvSwitchPressed(sender: AnyObject) {
        
        if tvSwitch.on {
        
            platformVar = "TV"
            onlineSwitch.on = false
            cinemaSwitch.on = false
            eventSwitch.on = false
            corporateSwitch.on = false
        
        }
    }
    
    @IBAction func onlineSwitchPressed(sender: AnyObject) {
        
        if onlineSwitch.on {
            
            platformVar = "Online"
            tvSwitch.on = false
            cinemaSwitch.on = false
            eventSwitch.on = false
            corporateSwitch.on = false
            
        }

    }
    
    @IBAction func cinemaSwitchPressed(sender: AnyObject) {
        
        if cinemaSwitch.on {
            
            platformVar = "Cinema"
            
            tvSwitch.on = false
            onlineSwitch.on = false
            eventSwitch.on = false
            corporateSwitch.on = false
            
        }

    }
    
    @IBAction func eventSwitchPressed(sender: AnyObject) {
        
        if eventSwitch.on {
            
            platformVar = "Event"
            tvSwitch.on = false
            cinemaSwitch.on = false
            onlineSwitch.on = false
            corporateSwitch.on = false
            
        }

    }
    
    @IBAction func corportateSwitchPressed(sender: AnyObject) {
        
        if corporateSwitch.on {
            
            platformVar = "Corportate"
            tvSwitch.on = false
            cinemaSwitch.on = false
            eventSwitch.on = false
            onlineSwitch.on = false
            
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
        
        let deadline : BudgetController = segue.destinationViewController as! BudgetController
        deadline.deadlineVar = deadlineVar
        
        let platform : BudgetController = segue.destinationViewController as! BudgetController
        platform.platformVar = platformVar
        
        let videoDescription : BudgetController = segue.destinationViewController as! BudgetController
        videoDescription.descriptionVar = descriptionVar
        
        let partProduction : BudgetController = segue.destinationViewController as! BudgetController
        partProduction.partVar = partVar
        
        let style : BudgetController = segue.destinationViewController as! BudgetController
        style.styleVar = styleVar
        
        let character : BudgetController = segue.destinationViewController as! BudgetController
        character.characterVar =  characterVar
        
        let setting : BudgetController = segue.destinationViewController as! BudgetController
        setting.settingVar =  settingVar
      

        
    }
}