import Foundation
import UIKit

class PartProductionController: UIViewController {
    
    
    
    
    
    @IBOutlet weak var liveSoundSwitch: UISwitch!
    @IBOutlet weak var musicSwitch: UISwitch!
    @IBOutlet weak var voiceoverSwitch: UISwitch!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if partVar == "Live Sound"{
            liveSoundSwitch.on = true
        } else if partVar == "Music"{
            musicSwitch.on = true
        } else if partVar == "Voice Over"{
            voiceoverSwitch.on = true
        }
        
    }
    
    
    
    
    
    
    @IBAction func liveSoundSwitchPressed(sender: AnyObject) {
        if liveSoundSwitch.on{
            partVar = "Live Sound"
            musicSwitch.on = false
            voiceoverSwitch.on = false
        }
    }
    
    @IBAction func musicSwitchPressed(sender: AnyObject) {
        if musicSwitch.on{
            partVar = "Music"
            liveSoundSwitch.on = false
            voiceoverSwitch.on = false
        }
    }
    
    @IBAction func voiceoverSwitchPressed(sender: AnyObject) {
        if voiceoverSwitch.on{
            partVar = "Voice Over"
            musicSwitch.on = false
            liveSoundSwitch.on = false
        }
    }

    
    
   
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       
    }
}