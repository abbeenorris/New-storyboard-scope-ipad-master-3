import Foundation
import UIKit
var liveSoundVar = String()
var musicVar = String()
var voiceOverVar = String()
class PartProductionController: UIViewController {
    
    
    
    
    
    @IBOutlet weak var liveSoundSwitch: UISwitch!
    @IBOutlet weak var musicSwitch: UISwitch!
    @IBOutlet weak var voiceoverSwitch: UISwitch!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if liveSoundVar == "Live Sound, "{
            liveSoundSwitch.on = true
        } else if musicVar == "Music, "{
            musicSwitch.on = true
        } else if voiceOverVar == "Voice Over"{
            voiceoverSwitch.on = true
        }
        
    }
    
    
    
    
    
    
    @IBAction func liveSoundSwitchPressed(sender: AnyObject) {
        if liveSoundSwitch.on{
            liveSoundVar = "Live Sound, "
        }
    }
    
    @IBAction func musicSwitchPressed(sender: AnyObject) {
        if musicSwitch.on{
            musicVar = "Music, "
        }
    }
    
    @IBAction func voiceoverSwitchPressed(sender: AnyObject) {
        if voiceoverSwitch.on{
            voiceOverVar = "Voice Over"
        }
    }

    
    
   
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       
    }
}