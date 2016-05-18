import Foundation
import UIKit

class DescriptionController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var timeVar = String()
    var deadlineVar = String()
    var descriptionVar = String()
    @IBOutlet weak var descriptionText: UITextView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        var contentInset:UIEdgeInsets = UIEdgeInsetsZero
        self.scrollView.contentInset = contentInset
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
   
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let projectTitle : PartProductionController = segue.destinationViewController as! PartProductionController
        projectTitle.projectTitleVar = projectTitleVar
        
        let clientName : PartProductionController = segue.destinationViewController as! PartProductionController
        clientName.clientNameVar = clientNameVar
        
        let videoType : PartProductionController = segue.destinationViewController as! PartProductionController
        videoType.videoTypeVar = videoTypeVar
        
        let runningTime : PartProductionController = segue.destinationViewController as! PartProductionController
        runningTime.timeVar = timeVar
        
        let deadline : PartProductionController = segue.destinationViewController as! PartProductionController
        deadline.deadlineVar = deadlineVar
        
        let videoDescription : PartProductionController = segue.destinationViewController as! PartProductionController
        videoDescription.descriptionVar = descriptionText.text!
        
    }
}
