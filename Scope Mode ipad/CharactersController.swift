import Foundation
import UIKit

var settingEnd = String()



class CharactersController: UIViewController {

    
    @IBOutlet weak var characterText: UITextField!
    @IBOutlet weak var settingText: UITextField!
    
  




    override func viewDidLoad() {
        super.viewDidLoad()
        characterText.text! = characterVar
        settingText.text! = settingVar
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name: UIKeyboardWillShowNotification, object: nil)
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name: UIKeyboardWillHideNotification, object: nil)

    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
//    func keyboardWillShow(notification:NSNotification){
//        
//        var userInfo = notification.userInfo!
//        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).CGRectValue()
//        keyboardFrame = self.view.convertRect(keyboardFrame, fromView: nil)
//        
//        var contentInset:UIEdgeInsets = self.scrollView.contentInset
//        contentInset.bottom = keyboardFrame.size.height
//        self.scrollView.contentInset = contentInset
//    }
//    
//    func keyboardWillHide(notification:NSNotification){
//        
//        let contentInset:UIEdgeInsets = UIEdgeInsetsZero
//        self.scrollView.contentInset = contentInset
//    }

    
}
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
         characterVar = characterText.text!
         settingVar = settingText.text!
        
        
        
    }
    
    
}