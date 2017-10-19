//
//  ViewController.swift
//  Lab 4
//
//  Created by Alejandro Alvarez on 10/18/17.
//  Copyright © 2017 Alejandro Alvarez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nounName: UITextField!
    @IBOutlet weak var noun: UITextField!
    @IBOutlet weak var adverb: UITextField!
    @IBOutlet weak var adjective: UITextField!
    var nounNameHolder=""
    var nounHolder=""
    var adverbHolder=""
    var adjectiveHolder=""
    var user = words()
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func unwindSegue(_ segue:UIStoryboardSegue){
        
        nounName.text = ""
       noun.text=""
        adverb.text=""
        adjective.text=""
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "switcheroo"{
            run()
            let scene1ViewController = segue.destination as! Scene2ViewController
           scene1ViewController.user.nameNouns=nounName.text
            
            scene1ViewController.user.adjectives=adjective.text
            
            scene1ViewController.user.adverbs=adverb.text
            
            scene1ViewController.user.nouns=noun.text
            }
    }
    
    func run(){
    if nounName.text!.isEmpty{
    nounNameHolder = "Nothing"
    }
    else {
    nounNameHolder = String(nounName.text!)!
    }
        if noun.text!.isEmpty{
            nounHolder = "Nothing"
        }
        else {
            nounHolder = String(noun.text!)!
        }
        if adverb.text!.isEmpty{
            adverbHolder = "Nothing"
        }
        else {
            adverbHolder = String(adverb.text!)!
        }
        if adjective.text!.isEmpty{
            adjectiveHolder = "Nothing"
        }
        else {
            adjectiveHolder = String(adjective.text!)!
        }
    }
    
    override func viewDidLoad() {
        nounName.delegate=self
        adjective.delegate=self
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

