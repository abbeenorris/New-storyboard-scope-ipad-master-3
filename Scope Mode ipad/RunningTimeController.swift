import Foundation
import UIKit

class RunningTimeController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var timeVar = String()
    
    var videoRunTime = 0
    
    
    @IBOutlet weak var TimerView: UIPickerView!
    
    var timePicker: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.TimerView.delegate=self
        self.TimerView.dataSource=self
        
        timePicker = ["5 minutes", "10 minutes ", "15 minutes", "20 minutes", "25 minutes", "30 minutes"]
        
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return timePicker.count
    }
    
    func pickerView(pickerView: UIPickerView,titleForRow row: Int, forComponent component: Int) -> String? {
        return timePicker [row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        videoRunTime = row
        timeVar = timePicker[row]
        
        print(timeVar)
    }

    
    
    
    
    
    
    @IBOutlet weak var runningTimePicker: UIDatePicker!
    let timeFormatter = NSDateFormatter()
    @IBAction func runningTimePickerTime(sender: AnyObject) {
        
        setTime()
    
    }
    
    
    
  
    
    func setTime() {
        timeFormatter.dateFormat = "HH:mm:ss"
        timeVar = timeFormatter.stringFromDate(runningTimePicker.date)
    }

    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : DeadlineController = segue.destinationViewController as! DeadlineController
        DestViewController.projectTitleVar = projectTitleVar
        
        let clientName : DeadlineController = segue.destinationViewController as! DeadlineController
        clientName.clientNameVar = clientNameVar
        
        let videoType : DeadlineController = segue.destinationViewController as! DeadlineController
        videoType.videoTypeVar = videoTypeVar
        
        let runningTime : DeadlineController = segue.destinationViewController as! DeadlineController
        runningTime.timeVar = timeVar
        
    }
    
}