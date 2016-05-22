import UIKit

class ProjectNameController: UIViewController {
    @IBOutlet weak var projectTextfield: UITextField!
    @IBOutlet weak var clientNameTextField: UITextField!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var nextBtn: UIButton!
    
    var projectTitleVar = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textChanged:", name: UITextFieldTextDidChangeNotification, object: nil)
        nextBtn.enabled = false
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name: UIKeyboardWillHideNotification, object: nil)
        projectTitleVar = projectTextfield.text!

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
        let projectTitle : VideoTypeController = segue.destinationViewController as! VideoTypeController
        projectTitle.projectTitleVar = projectTextfield.text!
        
        let clientName : VideoTypeController = segue.destinationViewController as! VideoTypeController
        clientName.clientNameVar = clientNameTextField.text!
        
        
    }
    
    

}

