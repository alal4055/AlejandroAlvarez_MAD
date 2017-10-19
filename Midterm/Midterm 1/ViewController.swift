//
//  ViewController.swift
//  Midterm 1
//
//  Created by Alejandro Alvarez on 10/19/17.
//  Copyright © 2017 Alejandro Alvarez. All rights reserved.
//

//runs well on the iphone5

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var commuteImage: UIImageView!
    @IBOutlet weak var miles: UITextField!
    @IBOutlet weak var switchCommute: UISwitch!
    
    @IBOutlet weak var sliderGas: UISlider!
    
    @IBOutlet weak var picker: UISegmentedControl!
    @IBOutlet weak var gasDisplay: UILabel!
    
    @IBOutlet weak var dailyLabel: UILabel!
    
    @IBOutlet weak var neededLabel: UILabel!
    var milesHolder=String()
    var carGas=24
    var avgSpeed=20
    var howMuch=Float()
    var roundBus=Float(1/6)
    var swictheroo=Float(1)
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func run(){
        if miles.text!.isEmpty{
            milesHolder = "Nothing"
        }
        else {
            milesHolder = String(miles.text!)!
        }
    }
    
    @IBAction func switchAction(_ sender: UISwitch) {
        if (sender.isOn){
        swictheroo=20
        }
        else{
        swictheroo=1
        }
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
         howMuch=sender.value
        gasDisplay.text=String(format: "%.0f", howMuch)
    }
    
    @IBAction func segmentedAction(_ sender: UISegmentedControl) {
        
        if picker.selectedSegmentIndex == 0 {
            commuteImage.image=UIImage(named: "car_icon")
            avgSpeed=20
        }
        else if picker.selectedSegmentIndex == 1 {
            commuteImage.image=UIImage(named: "bus_icon")
            avgSpeed=12
        }
        else if picker.selectedSegmentIndex == 2 {
            commuteImage.image=UIImage(named: "bike_icon")
            avgSpeed=10
        }
    }
    
    @IBAction func calculateAction(_ sender: UIButton) {
        run()
        if let milesString = Int(milesHolder) {
            let myNumber = NSNumber(value:milesString)
            
        var milesFloat=Float(myNumber)/Float(avgSpeed)
            if(picker.selectedSegmentIndex == 1){
            milesFloat=milesFloat+roundBus
            }
            milesFloat=milesFloat*swictheroo
            dailyLabel.text = String(format:"%.2f", milesFloat)
            var totalGas=(Float(milesHolder)!*2)
            
            totalGas=totalGas/Float(avgSpeed)
            totalGas=totalGas*swictheroo
            neededLabel.text=String(format:"%.2f", totalGas)
            
        }
        
    }
    
    @IBAction func infoAction(_ sender: UIButton) {
    }
    
    
    
    override func viewDidLoad() {
       miles.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

