import Foundation
import UIKit

class PlatformController: UIViewController {
  
    
    
    @IBOutlet weak var tvSwitch: UISwitch!
    @IBOutlet weak var onlineSwitch: UISwitch!
    @IBOutlet weak var cinemaSwitch: UISwitch!
    @IBOutlet weak var eventSwitch: UISwitch!
    @IBOutlet weak var corporateSwitch: UISwitch!
    @IBOutlet weak var websiteSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if platformVar == "TV"{
            tvSwitch.on = true
        } else if platformVar == "Online"  {
            onlineSwitch.on = true
        
        } else if platformVar == "Cinema"  {
            cinemaSwitch.on = true
            
        } else if platformVar == "Event"  {
            eventSwitch.on = true
            
        } else if platformVar == "Corportate"  {
            corporateSwitch.on = true
            
        } else if platformVar == "Website"  {
            websiteSwitch.on = true
            
        }
    }
    
    @IBAction func tvSwitchPressed(sender: AnyObject) {
        
        if tvSwitch.on {
        
            platformVar = "TV"
            onlineSwitch.on = false
            cinemaSwitch.on = false
            eventSwitch.on = false
            corporateSwitch.on = false
            websiteSwitch.on = false
        
        }
    }
    
    @IBAction func onlineSwitchPressed(sender: AnyObject) {
        
        if onlineSwitch.on {
            
            platformVar = "Online"
            tvSwitch.on = false
            cinemaSwitch.on = false
            eventSwitch.on = false
            corporateSwitch.on = false
            websiteSwitch.on = false
            
        }

    }
    
    @IBAction func cinemaSwitchPressed(sender: AnyObject) {
        
        if cinemaSwitch.on {
            
            platformVar = "Cinema"
            
            tvSwitch.on = false
            onlineSwitch.on = false
            eventSwitch.on = false
            corporateSwitch.on = false
            websiteSwitch.on = false
            
        }

    }
    
    @IBAction func eventSwitchPressed(sender: AnyObject) {
        
        if eventSwitch.on {
            
            platformVar = "Event"
            tvSwitch.on = false
            cinemaSwitch.on = false
            onlineSwitch.on = false
            corporateSwitch.on = false
            websiteSwitch.on = false
            
        }

    }
    
    @IBAction func corportateSwitchPressed(sender: AnyObject) {
        
        if corporateSwitch.on {
            
            platformVar = "Corportate"
            tvSwitch.on = false
            cinemaSwitch.on = false
            eventSwitch.on = false
            onlineSwitch.on = false
            websiteSwitch.on = false
            
        }

    }
    
    @IBAction func websiteSwitchPressed(sender: AnyObject) {
        
        if websiteSwitch.on {
            
            platformVar = "Website"
            tvSwitch.on = false
            cinemaSwitch.on = false
            eventSwitch.on = false
            onlineSwitch.on = false
            corporateSwitch.on = false
            
        }
    }
    
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
      

        
    }
}