# Swift Settings Manager
Settings manager build with Swift 2, Xcode 7, iOS 9.

## Overview
Swift based demo application for Settings Manager. It's using ``SettingsManager.swift`` singleton class that can read/write settings from/to device local storage i.e. ``NSUserDefaults``. 

It consist main component as listed:
+ ``SettingsManager.swift`` singleton class (i.e. can be used without instance).
+ Current Settings screen (it shows stored settings value).
+ Settings screen (it allows to change settings by visual way).

![ScreenShot iPhone4](../master/Screenshots/main-1t.png)
![ScreenShot iPhone4](../master/Screenshots/main-2t.png)

## Platform
+ Swift 2
+ iOS 9
+ Xcode 7

##Supported Device
iPhone 4s, 5, 5s, 5c, 6, 6 Plus, 6s, 6s Plus, all iPad having iOS 8.4, iOS 9

## Features
+ Easy to use within any Swift application.
+ Using key/value storage ``NSUserDefaults``.
+ Just copy and paste ``SettingsManger.swift`` file.
+ Settings value can be accessible from anywhere in the project.
+ Returns default value when application installed and run first time.
+ You can change default value within ``SettingsManager.swift`` file.
+ You can add more settings within ``SettingsManager.swift`` file.
+ Buid with Swift 2, iOS 9, Xcode 7 only,No other dependency.

## How To Use
+ Copy and paste ``SettingsManager.swift`` file within your swift project.
+ Prepare settings screen's visual inteface as per your preference OR use this project's screen.
+ Use ``SettingsManager.sharedInstance`` anywhere to read/write settings value.

<pre>
// set value within settings manager
SettingsManager.sharedInstance.refreshTime = 14

// read value from settings manager
let refreshTimeValue = Int(SettingsManager.sharedInstance.refreshTime)
</pre>


## Screenshots

**iPhone 4s**

![ScreenShot iPhone4s](../master/Screenshots/main-1t.png)
![ScreenShot iPhone4S](../master/Screenshots/main-2t.png)

**iPhone 5**

![ScreenShot iPhone5](../master/Screenshots/iphone5-1t.png)
![ScreenShot iPhone5](../master/Screenshots/iphone5-2t.png)

**iPhone 6**

![ScreenShot iPhone6](../master/Screenshots/iphone6-2t.png)
![ScreenShot iPhone6](../master/Screenshots/iphone6-1t.png)

**iPad**

![ScreenShot iPad](../master/Screenshots/ipad-1t.png)
![ScreenShot iPad](../master/Screenshots/ipad-2t.png)


## License
SwiftSettingsManager is available under the MIT license. See the LICENSE file for more info.

## Legacy Version
Xcode 6, iOS 8.4 based source code moved to ``Source-Xcode6`` folder. Please note that Xcode 6 based source code are deprecated and not upto date. I will suggest to use latest Xcode 7 based source from``SwiftSettingsManager`` folder at root.
