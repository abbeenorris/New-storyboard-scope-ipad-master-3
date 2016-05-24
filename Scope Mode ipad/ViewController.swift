//
//  ViewController.swift
//  lovelovevideoipad
//
//  Created by Adam Hale (i7685032) on 11/05/2016.
//  Copyright © 2016 Adam Hale (i7685032). All rights reserved.
//

import UIKit
import YouTubePlayer



class ViewController: UIViewController {
    
    var color = UIColor.whiteColor()
    
    var secondWindow : UIWindow?
    var secondScreenView : UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController!.navigationBar.tintColor = color
        
        setupScreen()
        
        let img = UIImage(named: "navbarblue")
        navigationController?.navigationBar.setBackgroundImage(img, forBarMetrics: .Default)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupScreen(){
        if UIScreen.screens().count > 1 {
            //find the second screen (the 'as! UIScreen' is not needed in Xcode 7 and above)
            let secondScreen = UIScreen.screens()[1]
            
            //set up a window for the screen using the screens pixel dimensions
            secondWindow = UIWindow(frame: secondScreen.bounds)
            
            //tell the window which screen to use
            secondWindow?.screen = secondScreen
            
            //set the dimensions for the view for the external screen so it fills the screen
            secondScreenView = UIView(frame: secondWindow!.frame)
            
            //add the view to the second screens window
            secondWindow?.addSubview(secondScreenView!)
            
            //unhide the window
            secondWindow?.hidden = false
            
            //customised the view
            secondScreenView!.backgroundColor = UIColor.blackColor()
            
            
            videoPlayer.frame = secondScreenView!.bounds
            
            let width = secondScreenView!.bounds.size.width
            let height = secondScreenView!.bounds.size.height
            
            
            
            let myImage = UIImage(named: "logotv")
            let myImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: width, height: height))
            myImageView.image = myImage
            
            secondScreenView!.addSubview(myImageView)
            
        }
    }
    
    
    
}

