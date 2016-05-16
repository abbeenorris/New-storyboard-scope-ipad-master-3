import Foundation
import UIKit

class BudgetController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var timeVar = String()
    var deadlineVar = String()
    var platformVar = String()
    var budgetVar = String()
    var descriptionVar = String()
    var partVar = String()
    var styleVar = String()
    var characterVar = String()
    var settingVar = String()
    
    @IBOutlet weak var budgetSlider: UISlider!
    @IBOutlet weak var budgetLabel: UILabel!
    let step: Float = 100
    
    @IBAction func BudgetChanged(sender: AnyObject) {
        let currentlVaule = round(budgetSlider.value / step) * step
        budgetLabel.text = "£\(currentlVaule)"
        budgetVar = budgetLabel.text!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
           
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let projectTitle : ContactController = segue.destinationViewController as! ContactController
        projectTitle.projectTitleVar = projectTitleVar
        
        let clientName : ContactController = segue.destinationViewController as! ContactController
        clientName.clientNameVar = clientNameVar
        
        let videoType : ContactController = segue.destinationViewController as! ContactController
        videoType.videoTypeVar = videoTypeVar
        
        let runningTime : ContactController = segue.destinationViewController as! ContactController
        runningTime.timeVar = timeVar
        
        let deadline : ContactController = segue.destinationViewController as! ContactController
        deadline.deadlineVar = deadlineVar
        
        let videoDescription : ContactController = segue.destinationViewController as! ContactController
        videoDescription.descriptionVar = descriptionVar
        
        let partProduction : ContactController = segue.destinationViewController as! ContactController
        partProduction.partVar = partVar
        
        let budget : ContactController = segue.destinationViewController as! ContactController
        budget.budgetVar = budgetVar
        
        let style : ContactController = segue.destinationViewController as! ContactController
        style.styleVar = styleVar
        
        let character : ContactController = segue.destinationViewController as! ContactController
        character.characterVar =  characterVar
        
        let platform : ContactController = segue.destinationViewController as! ContactController
        platform.platformVar = platformVar
        
        let setting : ContactController = segue.destinationViewController as! ContactController
        setting.settingVar =  settingVar

        
        
    }
}
