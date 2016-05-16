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
    var characterVar = String()
    var settingVar = String()
    let step: Float = 1
    // characater
    @IBOutlet weak var characterSlider: UISlider!
    @IBOutlet weak var characterText: UILabel!
    @IBAction func characterSliderChanged(sender: AnyObject) {
        let currentlVaule = round(characterSlider.value / step) * step
        characterText.text! = "\(currentlVaule)"
        characterVar = characterText.text!
    }
    
    //setting
    @IBOutlet weak var settingText: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingVar = settingText.text!
           
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
        
        let character : PlatformController = segue.destinationViewController as! PlatformController
        character.characterVar =  characterVar
        
        let setting : PlatformController = segue.destinationViewController as! PlatformController
        setting.settingVar =  settingVar
    }
    
}