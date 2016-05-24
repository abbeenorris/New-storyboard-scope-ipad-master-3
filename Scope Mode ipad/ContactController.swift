import Foundation
import UIKit
class ContactController: UIViewController {
    @IBOutlet weak var clientName: UITextField!
    @IBOutlet weak var companyName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var nextBtn: UIBarButtonItem!
    @IBOutlet weak var postion: UITextField!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textChanged:", name: UITextFieldTextDidChangeNotification, object: nil)
        nextBtn.enabled = false
        clientName.text! = clientNameVar
        companyVar = companyName.text!
        emailVar = email.text!
        phoneNumberVar = phoneNumber.text!
        postionVar = postion.text!
        companyName.text! = companyVar
        email.text! = emailVar
        phoneNumber.text! = phoneNumberVar
        postion.text! = postionVar
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
        if companyName.hasText() && email.hasText() && postion.hasText() && phoneNumber.hasText() {
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
        
        clientNameVar = clientName.text!
        companyVar = companyName.text!
        emailVar = email.text!
        phoneNumberVar = phoneNumber.text!
        postionVar = postion.text!

        
    }
    
}