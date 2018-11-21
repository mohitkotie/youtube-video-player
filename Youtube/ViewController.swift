//
//  ViewController.swift
//  Youtube
//
//  Created by mohit kotie on 06/11/17.
//  Copyright © 2017 mohit kotie mohit. All rights reserved.
//

import UIKit
import YouTubePlayer_Swift

//https://www.youtube.com/watch?v=6IFiXUD76Gg&list=PL1Z6ttYZJTaPGsh8JDlBBF58GC6j5efWU
//https://www.youtube.com/watch?v=6IFiXUD76Gg&list=PL1Z6ttYZJTaPGsh8JDlBBF58GC6j5efWU
class ViewController: UIViewController {

    @IBOutlet weak var viewLoad: YouTubePlayerView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       let  myPlayList:String = "PL1Z6ttYZJTaPGsh8JDlBBF58GC6j5efWU"
        viewLoad.loadPlaylistID(myPlayList)
//        print(myPlayList.count)

        let myVideo : String = "6IFiXUD76Gg"
        viewLoad.loadVideoID(myVideo)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func previousTapped(_ sender: Any) {
        viewLoad.previousVideo()
    }
    
    
    @IBAction func nextTapped(_ sender: Any) {
        viewLoad.nextVideo()
    }
    
    
    
    @IBAction func playTapped(_ sender: UIButton) {
        if sender.isSelected{
            sender.setTitle("Pause", for: .selected)
            viewLoad.pause()
        }else{

            sender.setTitle("Play", for: .normal)
            viewLoad.play()
        }

        
        
    }
    

    @IBAction func loadVideo(_ sender: Any) {
        
        let myVideo : String = "6IFiXUD76Gg"
        viewLoad.loadVideoID(myVideo)
        
    }
    
    @IBAction func loadPlaylist(_ sender: Any) {
        let myPlayList : String = "PL1Z6ttYZJTaPGsh8JDlBBF58GC6j5efWU"
        viewLoad.loadPlaylistID(myPlayList)
        
        
        
        
    }
}

