//
//  ViewController.swift
//  beatles
//
//  Created by Aileen Pierce
//  Copyright (c) 2017 Aileen Pierce. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageViewOne: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var segmented: UISegmentedControl!
    
    
    @IBOutlet weak var switcher: UISwitch!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var fontSizeLabel: UILabel!
    
    func changeCaps(){
        if segmented.selectedSegmentIndex == 0 {
            label.text=label.text?.lowercased()
        }
        else if segmented.selectedSegmentIndex == 1 {
            label.text=label.text?.uppercased()
        }
    }
    
    
    
    @IBAction func alterInfo(_ sender: UISegmentedControl) {
        changeCaps()
    }
    
    @IBAction func alterImage(_ sender: UISwitch){
        if switcher.isOn {
            label.text="carrot"
            imageViewOne.image=UIImage(named: "carrot")
            label.textColor = UIColor.blue
        } else {
            label.text="corn"
            imageViewOne.image=UIImage(named: "corn")
            label.textColor = UIColor.cyan}
    }
    
    @IBAction func alterFont(_ sender: UISlider) {
        let fontSize=sender.value //float
        fontSizeLabel.text=String(format: "%.0f", fontSize) //convert float to String
        let fontSizeCGFloat=CGFloat(fontSize) //convert float to CGFloat
        label.font=UIFont.systemFont(ofSize: fontSizeCGFloat) //create a UIFont object and assign to the font property
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



