//
//  ViewController.swift
//  Calculator
//
//  Created by Alejandro Alvarez on 10/10/17.
//  Copyright © 2017 Alejandro Alvarez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var distance: UITextField!
    
    @IBOutlet weak var mph: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func run(){
        var miles: Float
        var speed: Float
        if mph.text!.isEmpty {
            speed = 0.0
        }
        else {
            speed = Float(mph.text!)!
        }
        if distance.text!.isEmpty {
            miles = 0.0
        }
        else {
            miles = Float(distance.text!)!
        }
        let totalTime=miles/speed
        let serv = String(format: "%.2f", totalTime)
        let numberChange = Int(distance.text!)
        let numberConv = Int(mph.text!)
        if(mph.text != nil || numberChange! > 0){
        }
        else if(distance.text != nil || numberConv! > 0){
        }
      else {
                //create a UIAlertController object
                let alert=UIAlertController(title: "Warning", message: "The number of must be greater than 0", preferredStyle: UIAlertControllerStyle.alert)
                //create a UIAlertAction object for the button
                let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.cancel, handler: nil)
                alert.addAction(cancelAction) //adds the alert action to the alert object
                let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {action in
                    self.timeLabel.text="1"
                    self.run()
                })
                alert.addAction(okAction)
                present(alert, animated: true, completion: nil)
            } //end else
    timeLabel.text = serv
    }
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        mph.delegate=self
        distance.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        run()
    }

}


