//
//  ViewController.swift
//  Sirikit
//
//  Created by Aaron Smith on 2/23/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Makes a button change a label and display the time since I made this
    @IBOutlet weak var label_elapsedTime: UILabel!
    @IBAction func calculateElapsedTime(_ sender: Any) {
        calculateElapsedTime_()
    }
    
    func calculateElapsedTime_() {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let startDate = dateFormatter.date(from: "2024-02-23 03:16:00")
        let seconds = startDate!.timeIntervalSinceNow as Double
        
        print("\(seconds) seconds")
        
        label_elapsedTime.text = String(format: "%f", seconds)
        
        //creates a new instance of the user activity for Sirikit training
        createUserActivity()
    }
    
    func createUserActivity()
    {
        //Creates a user activity that siri can connect to for actions (activityType is set up as best practices, can name it whatever)
        let activity = NSUserActivity(activityType: "com.BSUAaron.Sirikit.calculateelapsedtime")
        //Title shown on siri shortcuts / suggestions
        activity.title = "Get Elapsed Time"
        //allows siri to find the activity
        activity.isEligibleForSearch = true
        activity.isEligibleForPrediction = true
        
        //sets current user activity to our custom activity
        self.userActivity = activity
        self.userActivity?.becomeCurrent()
    }
}
