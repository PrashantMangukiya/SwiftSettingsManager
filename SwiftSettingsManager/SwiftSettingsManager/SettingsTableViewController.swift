//
//  SettingsTableViewController.swift
//  SwiftSettingsManager
//
//  Created by Prashant on 04/09/15.
//  Copyright (c) 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit


class SettingsTableViewController: UITableViewController {

    
    // outlet and action - refresh time
    @IBOutlet var refreshTimeLabel: UILabel!
    
    @IBOutlet var refreshTime: UIStepper!
    @IBAction func refreshTimeChanged(sender: UIStepper) {

        // set label
        self.refreshTimeLabel.text = "\(Int(sender.value)) Seconds"
        
        // set value within settings manager
        SettingsManager.sharedInstance.refreshTime = Int(sender.value)
    }

    
    // outlet and action - like app
    @IBOutlet var likeAppLabel: UILabel!
    
    @IBOutlet var likeApp: UISwitch!
    @IBAction func likeAppChanged(sender: UISwitch) {
        
        if sender.on {
            
            // set label
            self.likeAppLabel.text = "YES"

            // set value within settings manager
            SettingsManager.sharedInstance.likeApp = true
        
        }else {
            
            // set label
            self.likeAppLabel.text = "NO"
            
            // set value within settings manager
            SettingsManager.sharedInstance.likeApp = false
        }
    }

    
    // outlet and action - default volume
    @IBOutlet var defaultVolumeLabel: UILabel!
    
    @IBOutlet var defaultVolume: UISlider!
    @IBAction func defaultVolumeChanged(sender: UISlider) {

        // set label
        self.defaultVolumeLabel.text = "\(Int(sender.value*100)) %"
        
        // set value within settings manager
        SettingsManager.sharedInstance.defaultVolume = sender.value
    }

    
    // outlet and action - default map type
    @IBOutlet var defaultMapType: UISegmentedControl!
    @IBAction func defaultMapTypeChanged(sender: UISegmentedControl) {    

        // set value within settings manager
        SettingsManager.sharedInstance.defaultMapType = sender.selectedSegmentIndex
    }
    
    
    
    
    // MARK: - View functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set refresh time value
        self.setValueRefreshTime()
        
        // set like the app value
        self.setValueLikeApp()
        
        // set value for default volume
        self.setValueDefaultVolume()
        
        // set default map type value
        self.setValueDefaultMapType()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: Utility functions
    
    // function - set refresh time value
    private func setValueRefreshTime(){
        
        // read value from settings manager
        let refreshTimeValue = Int(SettingsManager.sharedInstance.refreshTime)
        
        // set value for stepper
        self.refreshTime.value = Double(refreshTimeValue)
        
        // set label
        self.refreshTimeLabel.text = "\(refreshTimeValue) Seconds"
        
    }
    
    // function - set like the app value
    private func setValueLikeApp(){
        
        // read value from settings manager
        let likeAppValue = SettingsManager.sharedInstance.likeApp

        // show label based on value
        if likeAppValue {
            self.likeAppLabel.text = "YES"
            self.likeApp.setOn(true, animated:true)
        }else {
            self.likeAppLabel.text = "NO"
            self.likeApp.setOn(false, animated:true)
        }
    }
    
    // function - set default volume
    private func setValueDefaultVolume(){
        
        // read value from settings manager
        let defaultVolumeValue = SettingsManager.sharedInstance.defaultVolume
        
        self.defaultVolume.value = Float(defaultVolumeValue)
        
        // set lablel
        self.defaultVolumeLabel.text = "\(Int(defaultVolumeValue*100))%"
        
    }
    
    // function - set default map type value
    private func setValueDefaultMapType(){
        let mapType = SettingsManager.sharedInstance.defaultMapType
        self.defaultMapType.selectedSegmentIndex = Int(mapType)
    }
    
    
    
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 4
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // Return the number of rows in the section.
        
        // section - refresh time
        if section == 0 {
            return 1
        }
        
        // section - like app
        if section == 1 {
            return 1
        }
        
        // section - volume level
        if section == 2 {
            return 2
        }
        
        // section - map type
        if section == 3 {
            return 1
        }
        
        return 0    // default value
    }   
    
    // Note: We have set TableView content as 'static' so no other delegate method needed.
    
  
}
