//
//  ViewController.swift
//  SwiftSettingsManager
//
//  Created by Prashant on 03/09/15.
//  Copyright (c) 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // outlet - refresh time
    @IBOutlet var refreshTime: UILabel!

    // outlet - like app
    @IBOutlet var likeApp: UILabel!
    
    // outlet - default value
    @IBOutlet var defaultVolume: UILabel!
    
    // outlet - default map type
    @IBOutlet var defaultMapType: UILabel!
    
    
    
    
    // MARK: - View functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(animated: Bool) {
        // set settings value to label
        self.loadSettings()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Utility functions
    
    // load settings from settings manager and set value for label.
    private func loadSettings(){
    
        // refresh time
        self.refreshTime.text = String(SettingsManager.sharedInstance.refreshTime)
        
        // like App
        if SettingsManager.sharedInstance.likeApp {
            self.likeApp.text = "YES"
        }else{
            self.likeApp.text = "NO"
        }
        
        // default volume level
        self.defaultVolume.text = "\(Int(SettingsManager.sharedInstance.defaultVolume*100))%"
        
        // default map type
        let mayTypeValue = SettingsManager.sharedInstance.defaultMapType

        if mayTypeValue == 0 {
            self.defaultMapType.text = "Standard"
        }else if mayTypeValue == 1 {
            self.defaultMapType.text = "Satellite"
        }else if mayTypeValue == 2 {
            self.defaultMapType.text = "Hybrid"
        }else  {
            self.defaultMapType.text = "??"
        }
    }
    
    
}

