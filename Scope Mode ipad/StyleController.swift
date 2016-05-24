import Foundation
import UIKit

var liveActionVar = String()
var animationVar = String()
var mixedMediaVar = String()

class StyleController: UIViewController {
  
    
    @IBOutlet weak var liveActionBtn: UISwitch!
    @IBOutlet weak var animationBtn: UISwitch!
    @IBOutlet weak var mixedMediaBtn: UISwitch!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if liveActionVar == "Live Attion"{
            
            liveActionBtn.on = true
        
        }
        if animationVar == "Animation"{
            
            animationBtn.on = true
        }
        
        if mixedMediaVar == "Mixed Media"{
            
            mixedMediaBtn.on = true
        }
        
        
    
    }
    
    
    @IBAction func liveActionSwitchPressed(sender: AnyObject) {
        if liveActionBtn.on {
        liveActionVar = "Live Action"
        }
        
    }
    @IBAction func animationSwitchPressed(sender: AnyObject) {
        if animationBtn.on{
        animationVar = "Animation"
        }
    }
    @IBAction func mixedMediaSwitchPressed(sender: AnyObject) {
        if mixedMediaBtn.on{
         mixedMediaVar = "Mixed Media"
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
    }
}