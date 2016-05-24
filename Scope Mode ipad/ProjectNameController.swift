import UIKit

var projectTitleVar =  String()
var clientNameVar = String()
var videoTypeVar = String()
var timeVar = String()
var deadlineVar = String()
var descriptionVar = String()
var platformVar = String()
var budgetVar = String()
var partVar = String()
var styleVar = String()
var characterVar = String()
var settingVar = String()
var companyVar = String()
var emailVar = String()
var phoneNumberVar = String()
var postionVar = String()

class ProjectNameController: UIViewController {
    @IBOutlet weak var projectTextfield: UITextField!
    @IBOutlet weak var clientNameTextField: UITextField!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var nextBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textChanged:", name: UITextFieldTextDidChangeNotification, object: nil)
        nextBtn.enabled = false
        
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
    
    func textChanged(sender: NSNotification) {
        if projectTextfield.hasText() && clientNameTextField.hasText() {
            nextBtn.enabled = true
        }
        else {
            nextBtn.enabled = false
        }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        projectTitleVar = projectTextfield.text!
        clientNameVar = clientNameTextField.text!
  			
    
    

}

}