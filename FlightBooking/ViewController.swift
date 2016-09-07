//
//  ViewController.swift
//  FlightBooking
//
//  Created by 이규진 on 2016. 9. 1..
//  Copyright © 2016년 이규진. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var selectDatePicker: UIDatePicker!
    @IBOutlet weak var returnDateButton: UIButton!
    @IBOutlet weak var returnDateLabel: UILabel!
    @IBOutlet weak var departureDateButton: UIButton!

    @IBAction func showReturnDateAction(_ sender: AnyObject) {
//        if (sender as! UISwitch).isOn {
//            returnDateLabel.isHidden = false
//            returnDateButton.isHidden = false
//        } else {
//            returnDateLabel.isHidden = true
//            returnDateButton.isHidden = false
//        }
        let isSwitchOn = (sender as! UISwitch).isOn
        returnDateLabel.isHidden = !isSwitchOn
        returnDateButton.isHidden = !isSwitchOn
    }
    @IBAction func showDatePickerAction(_ sender: AnyObject) {
        selectDatePicker.isHidden = !selectDatePicker.isHidden
        
        buttonTag = (sender as! UIButton).tag
    }
    
    var buttonTag: Int = 1
    @IBAction func selectedDateAction(_ sender: AnyObject) {
        let formatter = DateFormatter()
        formatter.dateFormat = "YY-MM-d hh:mma"
        let dateString = formatter.string(from: (sender as! UIDatePicker).date)
    
        if buttonTag == 1 {
            departureDateButton.setTitle(dateString, for: UIControlState())
        } else {
            returnDateButton.setTitle(dateString, for: UIControlState())
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        returnDateLabel.isHidden = true
        returnDateButton.isHidden = true
        selectDatePicker.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

