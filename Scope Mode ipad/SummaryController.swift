import Foundation
import UIKit
import MessageUI

class SummaryController: UIViewController, MFMailComposeViewControllerDelegate {
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
    
    @IBOutlet weak var projectText: UITextField!
    @IBOutlet weak var clientText: UITextField!
    @IBOutlet weak var videoTypeText: UITextField!
    @IBOutlet weak var runningTimeText: UITextField!
    @IBOutlet weak var deadlineText: UITextField!
    @IBOutlet weak var descriptionText: UITextField!
    @IBOutlet weak var partProductionText: UITextField!
    @IBOutlet weak var styleText: UITextField!
    @IBOutlet weak var charactersText: UITextField!
    @IBOutlet weak var settingText: UITextField!
    @IBOutlet weak var platformText: UITextField!
    @IBOutlet weak var budgetText: UITextField!
    @IBOutlet weak var companyNameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var phoneNumberText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        projectText.text! = projectTitleVar
        clientText.text! = clientNameVar
        videoTypeText.text! = videoTypeVar
        runningTimeText.text! = timeVar
        deadlineText.text! = deadlineVar
        descriptionText.text! = descriptionVar
        partProductionText.text! = partVar
        styleText.text! = styleVar
        charactersText.text! = characterVar
        settingText.text! = settingVar
        platformText.text! = platformVar
        budgetText.text! = budgetVar
        companyNameText.text! = companyVar
        emailText.text! = emailVar
        phoneNumberText.text! = phoneNumberVar
        
        
        
        
    }
    
    //start email (email form wont work in simulator, you'll need a device to test  )
    @IBAction func sendEmailButtonTapped(sender: AnyObject) {
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            self.presentViewController(mailComposeViewController, animated: true, completion: nil)
        } else {
            self.showSendMailErrorAlert()
        }
    }
    
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        
        //touch only things in this block
        mailComposerVC.setToRecipients(["sam.gray22@gmail.com"])
        mailComposerVC.setSubject( "company name")
        mailComposerVC.setMessageBody("", isHTML: false)
        //end block
        return mailComposerVC
    }
    func showSendMailErrorAlert() {
        let sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device could not send e-mail.  Please check e-mail configuration and try again.", delegate: self, cancelButtonTitle: "OK")
        sendMailErrorAlert.show()
    }
    
    
    func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!) {
        controller.dismissViewControllerAnimated(true, completion: nil)
        
    }
    //end email
    
    
}