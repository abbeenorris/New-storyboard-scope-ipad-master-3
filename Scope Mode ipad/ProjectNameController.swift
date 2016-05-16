import UIKit

class ProjectNameController: UIViewController {
    @IBOutlet weak var projectTextfield: UITextField!
    @IBOutlet weak var clientNameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let projectTitle : VideoTypeController = segue.destinationViewController as! VideoTypeController
        projectTitle.projectTitleVar = projectTextfield.text!
        let clientName : VideoTypeController = segue.destinationViewController as! VideoTypeController
        clientName.clientNameVar = clientNameTextField.text!
        
    }

}

