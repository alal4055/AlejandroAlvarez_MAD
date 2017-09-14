//
//  ViewController.swift
//  Lab 1
//
//  Created by Alejandro Alvarez on 9/13/17.
//  Copyright © 2017 Alejandro Alvarez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageInt = 1
    var imageTwo = 3
    let sentence = "3"

    
    
    @IBOutlet weak var imageview: UIImageView!
 
    @IBOutlet weak var labelcounter: UILabel!
    
    
    
    @IBAction func Next(_ sender: UIButton) {
    imageInt = imageInt + 1
        if imageInt == 4 {
            imageInt = 1
        }
        
        if imageInt == 1 {
            imageview.image = UIImage(named: "daVinci.png")
            imageTwo = 4
        }
        
        else if imageInt == 2 {
            imageview.image = UIImage(named: "daVinci_MonaLisa.png")
            imageTwo = 2
        }
        
        else if imageInt == 3 {
            
            imageview.image = UIImage(named: "daVinci_Vitruvian.png")
            imageTwo = 3
            }
        
        labelcounter.text = String("\(imageInt)/3")
        
    }
    
    @IBAction func Previous(_ sender: UIButton) {
        
        imageTwo = imageTwo - 1
        if imageTwo == 0 {
            imageTwo = 3
        }
        
        if imageTwo == 1 {
            imageview.image = UIImage(named: "daVinci.png")
            imageInt = 1
        }
            
        else if imageTwo == 2 {
            imageview.image = UIImage(named: "daVinci_MonaLisa.png")
            imageInt = 2
        }
            
        else if imageTwo == 3 {
            
            imageview.image = UIImage(named: "daVinci_Vitruvian.png")
            imageInt = 0
        }
        
        labelcounter.text = String("\(imageTwo)/3")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageview.image = UIImage(named: "daVinci.png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
