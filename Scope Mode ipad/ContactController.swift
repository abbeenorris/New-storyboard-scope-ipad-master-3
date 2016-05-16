import Foundation
import UIKit
class ContactController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var timeVar = String()
    var deadlineVar = String()
    var descriptionVar = String()
    var budgetVar = String()
    var platformVar = String()
    var projectTitle = String()
    var partVar = String()
    var styleVar = String()
    var characterVar = String()
    var settingVar = String()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        projectTitle = projectTitleVar
    }
    
    
    
    
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let projectTitle : SummaryController = segue.destinationViewController as! SummaryController
        projectTitle.projectTitleVar = projectTitleVar
        
        let clientName : SummaryController = segue.destinationViewController as! SummaryController
        clientName.clientNameVar = clientNameVar
        
        let videoType : SummaryController = segue.destinationViewController as! SummaryController
        videoType.videoTypeVar = videoTypeVar
        
        let runningTime : SummaryController = segue.destinationViewController as! SummaryController
        runningTime.timeVar = timeVar
        
        let deadline : SummaryController = segue.destinationViewController as! SummaryController
        deadline.deadlineVar = deadlineVar
        
        let videoDescription : SummaryController = segue.destinationViewController as! SummaryController
        videoDescription.descriptionVar = descriptionVar
        
        let partProduction : SummaryController = segue.destinationViewController as! SummaryController
        partProduction.partVar = partVar
        
        let style : SummaryController = segue.destinationViewController as! SummaryController
        style.styleVar = styleVar
        
        let character : SummaryController = segue.destinationViewController as! SummaryController
        character.characterVar = characterVar
        
        let setting : BudgetController = segue.destinationViewController as! BudgetController
        setting.settingVar =  settingVar
    }
    
}