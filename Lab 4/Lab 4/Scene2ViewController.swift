//
//  Scene2ViewController.swift
//  Lab 4
//
//  Created by Alejandro Alvarez on 10/18/17.
//  Copyright © 2017 Alejandro Alvarez. All rights reserved.
//

import UIKit

class Scene2ViewController: UIViewController {
    @IBOutlet weak var nounName1: UILabel!
    @IBOutlet weak var noun1: UILabel!
    @IBOutlet weak var adverb1: UILabel!
    @IBOutlet weak var adjective1: UILabel!
    var user=words()
    
    override func viewDidLoad() {
        nounName1.text=user.nameNouns
        noun1.text=user.nouns
        adverb1.text=user.adverbs
        adjective1.text=user.adjectives
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
