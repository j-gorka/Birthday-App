//
//  ViewController.swift
//  test
//
//  Created by Joe Gorka on 5/18/18.
//  Copyright © 2018 Joe Gorka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //properties:
    
    @IBOutlet weak var isbirthday: UILabel!
	
    @IBOutlet weak var top: UILabel!
    
    @IBOutlet weak var date: UIDatePicker!
    
    var today : Date = Date()
    
    @IBAction func done(_ sender: Any) {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM,dd"
        let enteredDate : String = formatter.string(from: date.date)
        let todaystring : String = formatter.string(from: today)
        if todaystring == enteredDate {
            isbirthday.text = "Yes!"
        }
        else{
            isbirthday.text = "No :("
        }
        isbirthday.sizeToFit()
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
		
		//add code to segue to other storyboard if user has entered date already
        isbirthday.text = "Choose a date!"
        isbirthday.sizeToFit()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

