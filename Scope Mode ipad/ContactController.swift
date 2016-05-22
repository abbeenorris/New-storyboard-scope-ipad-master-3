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
    var companyVar = String()
    var emailVar = String()
    var phoneNumberVar = String()
    
    
    
    
    
    @IBOutlet weak var clientName: UITextField!
    @IBOutlet weak var companyName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clientName.text! = clientNameVar
        companyVar = companyName.text!
        emailVar = email.text!
        phoneNumberVar = phoneNumber.text!
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name: UIKeyboardWillHideNotification, object: nil)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func keyboardWillShow(notification:NSNotification){
        
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).CGRectValue()
        keyboardFrame = self.view.convertRect(keyboardFrame, fromView: nil)
        
        var contentInset:UIEdgeInsets = self.scrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height
        self.scrollView.contentInset = contentInset
    }
    
    func keyboardWillHide(notification:NSNotification){
        
        let contentInset:UIEdgeInsets = UIEdgeInsetsZero
        self.scrollView.contentInset = contentInset
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
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
        
        let platform : SummaryController = segue.destinationViewController as! SummaryController
        platform.platformVar = platformVar
        
        let budget : SummaryController = segue.destinationViewController as! SummaryController
        budget.budgetVar = budgetVar
        
        let setting : SummaryController = segue.destinationViewController as! SummaryController
        setting.settingVar =  settingVar
        
        let company : SummaryController = segue.destinationViewController as! SummaryController
        company.companyVar =  companyName.text!
        
        let emailSeg : SummaryController = segue.destinationViewController as! SummaryController
        emailSeg.emailVar = email.text!
        
        let phone : SummaryController = segue.destinationViewController as! SummaryController
        phone.phoneNumberVar =  phoneNumber.text!


        
    }
    
}