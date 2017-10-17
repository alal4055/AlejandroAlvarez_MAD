//
//  ViewController.swift
//  Project 1
//
//  Created by Alejandro Alvarez on 10/16/17.
//  Copyright © 2017 Alejandro Alvarez. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var scrolling: UIScrollView!
    
    var counter = 0
    var counterTwo = 1
    @IBOutlet weak var songSelector: UISegmentedControl!

    @IBOutlet weak var SongPlaying: UIButton!
    @IBOutlet weak var songImage: UIImageView!
    
    
    @IBOutlet weak var artistLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var player:AVAudioPlayer = AVAudioPlayer()
    
    var songList: [String] = ["Temple", "Things", "Levels", "Ghost", "Vision"]
    
    var spotifyList: [String] = ["https://open.spotify.com/artist/23ostNBoB9z6GMXLtHdg7y", "https://open.spotify.com/artist/5lCekoJW9jNq01B1wiqdAb", "https://open.spotify.com/artist/5oAjLXTvB7VDWn3Up9LYcQ","https://open.spotify.com/artist/6PX9H0VMD5HjAL03EIlr3V", "https://open.spotify.com/artist/25oLRSUjJk4YHNUsQXk7Ut"]
    
    var soundCloudList: [String] = ["https://soundcloud.com/prismomusic", "https://soundcloud.com/crankdatmusic", "https://soundcloud.com/lucalush", "https://soundcloud.com/jamestonthieves", "https://soundcloud.com/griz"]
    
    var facebookList: [String] = ["https://www.facebook.com/PrismoMusic/", "https://www.facebook.com/crankdat/", "https://www.facebook.com/LucaLush/", "https://www.facebook.com/JamestonThieves/", "https://www.facebook.com/mynameisGRiZ/"]
    
    var twitterList: [String] = ["https://twitter.com/PrismoMusic?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor", "https://twitter.com/crankdat?lang=en", "https://twitter.com/LUCALUSH?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor", "https://twitter.com/JamestonThieves?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor", "https://twitter.com/griz"]
    
    @IBAction func facebookLink(_ sender: UIButton) {
        if let urlFacebook = NSURL(string: facebookList[counter]){
            UIApplication.shared.openURL(urlFacebook as URL)
        }
    }
    
    
    @IBAction func twitterLink(_ sender: UIButton) {
        if let urlTwitter = NSURL(string: twitterList[counter]){
            UIApplication.shared.openURL(urlTwitter as URL)
        }
    }
    
    
    
    @IBAction func soundCloudLink(_ sender: UIButton) {
        if let urlSound = NSURL(string: soundCloudList[counter]){
            UIApplication.shared.openURL(urlSound as URL)
    }
}
    
    @IBAction func spotifyLink(_ sender: UIButton) {
        if let url = NSURL(string: spotifyList[counter]){
            UIApplication.shared.openURL(url as URL)
        }
    }
    
    @IBAction func songPlay(_ sender: UIButton) {
        if(counterTwo == 1){
            counterTwo = counterTwo + 1
            do{
        let audioPath = Bundle.main.path (forResource: songList[counter], ofType: "mp3")
        
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!)as URL)
            }
            catch{
            //error
            }
            player.play()
            songImage.image=UIImage(named: "pause")
        }
        else{
        counterTwo = 1
            
            songImage.image=UIImage(named : "play")
            player.pause()
        }
        //song stuff
    }
    
    
    @IBOutlet weak var artistImage: UIImageView!
    
    var imageList: [String] = ["Prismo", "Crankdat", "Avicii", "Jameston", "griz"]
    
    var artistList: [String] = ["Baauer - Temple (Prismo Remix)","graves & Coolights - Say Things (Crankdat Re-Crank)","Avicii - Levels (LUCA LUSH LIFT)", "Jameston Thieves - Ghost", "GRiZ - Vision Of Happiness"]
    
    var descriptionList: [String] = ["Following the success of countless originals and remixes over the past few years, 20 year old bass music producer, singer, and songwriter Prismo has made a name for himself in the scene as a sort of Jack-of-all-trades.","New remix of graves and Coolights - Say Things.","LUCA LUSH said that Avicci's biggest song was called Levels and that Avicci was woke before his time.  He has been using this in his sets and decided to drop it for free. LUCA LUSCH will keep in touch.", "Up and coming producer who has releases on labels such as OWSLA, Universal, Armada, Atlantic, Interscope, and Dim Mak.", "He is 25 years old and is from Detroit. He loves Vinyl. He is also a people hugger."]
    
    @IBAction func rightArrowButton(_ sender: UIButton) {
        counter = counter - 1
        if (counter == -1){
        counter = 4
        }
songSelector.selectedSegmentIndex = counter
 updateThings()
    }
    
    @IBAction func leftArrowButton(_ sender: UIButton) {
        counter = counter + 1
        if (counter == 5){
            counter = 0
        }
        songSelector.selectedSegmentIndex = counter
        updateThings()
    }
    
    
    func updateThings(){
        artistImage.image=UIImage(named: imageList[counter])
        artistLabel.text=artistList[counter]
        descriptionLabel.text=descriptionList[counter]

    }
    
    @IBAction func songPicker(_ sender: UISegmentedControl) {
        if songSelector.selectedSegmentIndex == 0 {
            counter = 0
        }
        else if songSelector.selectedSegmentIndex == 1 {
            counter = 1
        }
        else if songSelector.selectedSegmentIndex == 2 {
           counter = 2
        }
        else if songSelector.selectedSegmentIndex == 3 {
            counter = 3
        }
        else if songSelector.selectedSegmentIndex == 4 {
            counter = 4
        }
        updateThings()
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

