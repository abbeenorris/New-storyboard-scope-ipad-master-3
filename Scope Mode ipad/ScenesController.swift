import Foundation
import UIKit

class ScenesController: UIViewController {
    var hiddenProjectVar =  String()
    var videoTypeVar = String()
    var budgetVar = String()
    var platformVar = String()
    var descriptionVar = String()

    

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
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : PartProductionController = segue.destinationViewController as! PartProductionController
        DestViewController.hiddenProjectVar = hiddenProjectVar
        
    }
}

// this looks important so i havent deleted it although we dont need the scene view controller anymore :) 