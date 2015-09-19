//
//  SettingsManager.swift
//  SwiftSettingsManager
//
//  Created by Prashant on 03/09/15.
//  Copyright (c) 2015 PrashantKumar Mangukiya. All rights reserved.
//

///////////////////////////////////////////////////////////////////////////
// Singletone class that manages local storage with key/value
// Usage:
// Read value:
// var refreshTimeValue = SettingsManager.sharedInstance.refreshTime
// Set value:
// SettingsManager.sharedInstance.refreshTime = 20
///////////////////////////////////////////////////////////////////////////


import Foundation


class SettingsManager{
    
    // setup shared instance
    class var sharedInstance: SettingsManager {
        struct Static {
            static let instance: SettingsManager = SettingsManager()
        }
        return Static.instance
    }
    
    // get default storage
    private var defaultStorage = NSUserDefaults.standardUserDefaults()

    
    
    // Define derived property for all Key/Value settings.
    
    // refresh time (in seconds)
    var refreshTime: Int {
        get{
            if defaultStorage.objectForKey("refreshTime") != nil {
                let returnValue = defaultStorage.objectForKey("refreshTime") as! Int
                return returnValue
            }else{
                return 10   // default value
            }
        }set{
            defaultStorage.setInteger(newValue, forKey: "refreshTime")
        }
    }
    
    // default volume
    var defaultVolume: Float {
        get{
            if defaultStorage.objectForKey("defaultVolume") != nil {
                let returnValue = defaultStorage.objectForKey("defaultVolume") as! Float
                return returnValue
            }else{
                return 0.5      // default value
            }
        }set{
            defaultStorage.setFloat( newValue, forKey: "defaultVolume")
        }
    }
    
    // like App (true/false)
    var likeApp: Bool {
        get{
            if defaultStorage.objectForKey("likeApp") != nil {
                let returnValue = defaultStorage.objectForKey("likeApp") as! Bool
                return returnValue
            }else{
                return false    // default value
            }
        }set{
            defaultStorage.setBool(newValue, forKey: "likeApp")
        }
    }
    
    // default map type (0-Standard, 1-Satellite, 2-Hybrid)
    var defaultMapType: Int {
        get{
            if defaultStorage.objectForKey("defaultMapType") != nil {
                let storedValue = defaultStorage.objectForKey("defaultMapType") as! Int
                return storedValue
            }else{
                return 0    // default value, 0-Standard
            }
        }set{
            defaultStorage.setInteger(newValue, forKey: "defaultMapType")
        }
    }
    
    // you can add more derived property here, based on settings required for the application
    
}

