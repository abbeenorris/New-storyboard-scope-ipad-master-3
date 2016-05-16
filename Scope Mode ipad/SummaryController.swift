import Foundation
import UIKit

class SummaryController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var timeVar = String()
    var platformVar = String()
    var budgetVar = String()
    
    @IBOutlet weak var projectText: UITextField!
    @IBOutlet weak var videoTypeText: UITextField!
    @IBOutlet weak var budgetText: UITextField!
    @IBOutlet weak var platformText: UITextField!
    @IBOutlet weak var DescriptionText: UITextField!
    @IBOutlet weak var styleText: UITextField!
    @IBOutlet weak var styleContinunedText: UITextField!
    @IBOutlet weak var charactersText: UITextField!
    @IBOutlet weak var preProductionText: UITextField!
    @IBOutlet weak var scenesText: UITextField!
    @IBOutlet weak var partProductionText: UITextField!
    @IBOutlet weak var deadlineText: UITextField!
    @IBOutlet weak var postProductionText: UITextField!
    @IBOutlet weak var runningTimeText: UITextField!
    @IBOutlet weak var videoSelectedText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        projectText.text! = projectTitleVar
        //clientText.text! = clientNameVar
        videoTypeText.text! = videoTypeVar
        //timeText.text! = timeVar
        platformText.text! = platformVar
        budgetText.text! = budgetVar
        runningTimeText.text! = timeVar
        
        
    }
    
}