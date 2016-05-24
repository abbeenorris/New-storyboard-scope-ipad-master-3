//
//  ViewController.swift
//  airplaytest
//
//  Created by apple on 29/04/2016.
//  Copyright (c) 2016 katie mcgowan. All rights reserved.
//

import UIKit
import MediaPlayer
import YouTubePlayer

class NoAirplay: UIViewController {
    
    var video: Video!
    var currentScreens = 0
    
    
    @IBOutlet var videoPlayer: YouTubePlayerView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    @IBOutlet weak var videoDescription: UITextView!
    
    //    @IBAction func videoPlay(sender: AnyObject) {
    //        if videoPlayer.ready {
    //            videoPlayer.play()
    //        }
    //    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        currentScreens = sender.tag!
        
        videoPlayer.loadVideoID(video.id)
        
        videoTitle.text = video.title
        videoDescription.text = video.description
        videoDescription.font = UIFont(name: "Raleway-Regular", size: 20)
        
        
        
    }
    
    
    
}


