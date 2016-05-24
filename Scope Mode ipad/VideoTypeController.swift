import Foundation
import UIKit

var behindSceneVar = String()
var digitalSwitchVar = String()
var documentaryVar = String()
var filmVar = String()
var howToVar = String()
var introVar = String()
var lectureVar = String()
var miniDocVar = String()
var musicVideoVar = String()
var psaVar = String()
var shortFilmVar = String()
var showVar = String()
var socialExperimentVar = String()
var stuntVar = String()
var teaserVar = String()
var trailerVar = String()
var webEpisodeVar = String()

class VideoTypeController: UIViewController {
     override func viewDidLoad() {
        super.viewDidLoad()
        
        if behindSceneVar == "Behind The Scenes"{
            
            behindSceneSwitch.on = true
            
        }
        
        if digitalSwitchVar == "Digital Signage"{
            
            digitalSwitch.on = true
        }
        
        if documentaryVar == "Documentary"{
            
            documentarySwitch.on = true
        }
        
        if filmVar == "Feature Film"{
            
            filmSwitch.on = true
        }
        
        if howToVar == "How-to/Product Demo"{
            
            howToSwitch.on = true
        }
        
        if introVar == "Intro/Response/Recruitment"{
            
            introSwitch.on = true
        }
        
        if lectureVar == "Making of Lecture/Speech"{
            
            lectureSwitch.on = true
        }
        
        if miniDocVar == "Mini-doc"{
            
            miniDocSwitch.on = true
        }
        
        if musicVideoVar == "Music Video"{
            
            musicVideoSwitch.on = true
        }
        
        if psaVar == "Public Service Announcement" {
        
            psaSwitch.on = true
        
        }
        
        if shortFilmVar == "Short Film" {
            
            shortFilmSwitch.on = true
            
        }
        
        if showVar == "Show" {
            
            showSwitch.on = true
            
        }
        if stuntVar == "Stunt" {
            
            stuntSwitch.on = true
            
        }
        if teaserVar == "Teaser" {
            
            teaserSwitch.on = true
            
        }
        
        if trailerVar == "Trailer" {
            
            trailerSwitch.on = true
            
        }
        
        if webEpisodeVar == "Web Episode" {
            
            webEpisodeSwitch.on = true
            
        }
        
        
    }
    
    @IBOutlet weak var behindSceneSwitch: UISwitch!
    
    @IBOutlet weak var digitalSwitch: UISwitch!
    
    @IBOutlet weak var documentarySwitch: UISwitch!
    
    @IBOutlet weak var filmSwitch: UISwitch!
    
    @IBOutlet weak var howToSwitch: UISwitch!
    
    @IBOutlet weak var introSwitch: UISwitch!
    
    @IBOutlet weak var lectureSwitch: UISwitch!
    
    @IBOutlet weak var miniDocSwitch: UISwitch!
    
    @IBOutlet weak var musicVideoSwitch: UISwitch!
    
    @IBOutlet weak var psaSwitch: UISwitch!
    
    @IBOutlet weak var shortFilmSwitch: UISwitch!
    
    @IBOutlet weak var showSwitch: UISwitch!
    
    @IBOutlet weak var socialExperimentSwitch: UISwitch!
    
    @IBOutlet weak var stuntSwitch: UISwitch!
    
    @IBOutlet weak var teaserSwitch: UISwitch!
    
    @IBOutlet weak var trailerSwitch: UISwitch!
    
    @IBOutlet weak var webEpisodeSwitch: UISwitch!
    
    
    
    
    
    @IBAction func behindSceneSwitchPressed(sender: AnyObject) {
        if behindSceneSwitch.on {
            behindSceneVar = "Behind The Scenes"
        }
    }
    
    @IBAction func digitalSwitchPressed(sender: AnyObject) {
        if digitalSwitch.on {
            digitalSwitchVar = "Digital Signage"
        }
    }
    
    @IBAction func documentarySwitchPressed(sender: AnyObject) {
        if documentarySwitch.on {
            documentaryVar = "Documentary"
        }
    }
    
    @IBAction func filmSwitchPressed(sender: AnyObject) {
        if filmSwitch.on {
            filmVar = "Feature Film"
        }
    }
    
    @IBAction func howToSwitchPressed(sender: AnyObject) {
        if howToSwitch.on {
            howToVar = "How-to/Product Demo"
        }
    }
    
    @IBAction func introSwitchPressed(sender: AnyObject) {
        if introSwitch.on {
            introVar = "Intro/Response/Recruitment"
        }
    }
    
    @IBAction func lectureSwitchPressed(sender: AnyObject) {
        if lectureSwitch.on {
            lectureVar = "Making of Lecture/Speech"
        }
    }
    
    @IBAction func miniDocSwitchPressed(sender: AnyObject) {
        if miniDocSwitch.on {
            miniDocVar = "Mini-doc"
        }
    }
    
    @IBAction func musicVideoSwitchPressed(sender: AnyObject) {
        if musicVideoSwitch.on {
            musicVideoVar = "Music Video"
        }
    }
    
    @IBAction func psaSwitchPressed(sender: AnyObject) {
        if psaSwitch.on {
            psaVar = "Public Service Announcement"
        }
    }
    
    @IBAction func shortFilmSwitchPressed(sender: AnyObject) {
        if shortFilmSwitch.on {
            shortFilmVar = "Short Film"
        }
    }
    
    @IBAction func showSwitchPressed(sender: AnyObject) {
        if showSwitch.on {
            showVar = "Show"
        }
    }
    
    @IBAction func socialExperimentSwitchPressed(sender: AnyObject) {
        if socialExperimentSwitch.on {
            socialExperimentVar = "Social Experiment"
        }
    }
    
    @IBAction func stuntSwitchPressed(sender: AnyObject) {
        if stuntSwitch.on {
            stuntVar = "Stunt"
        }
    }
    
    @IBAction func teaserSwitchPressed(sender: AnyObject) {
        if teaserSwitch.on {
            teaserVar = "Teaser"
        }
    }
    
    @IBAction func trailerSwitchPressed(sender: AnyObject) {
        if trailerSwitch.on {
            trailerVar = "Trailer"
        }
    }
    
    @IBAction func webEpisodeSwitchPressed(sender: AnyObject) {
        if webEpisodeSwitch.on {
            webEpisodeVar = "Web Episode"
        }
    }
    
    
    

   
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
 
        
    }


    
}
