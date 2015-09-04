# Swift Settings Manager
Settings manager created with Swift, iOS 8, Xcode 6.4

## Overview
Swift based application created for settings manager. It is using ``SettingsManager.swift`` singletone class that can read/write settings from/to device local storage (i.e. NSUserDefaults). 

It consist main component as listed below:
+ ``SettingsManager.swift`` singletone class (i.e. use it without instance).
+ Current Settings screen (shows stored settings value).
+ Settings screen (allows to change settings by visual way).


![ScreenShot iPhone4](../master/Screenshots/main-1t.png)
![ScreenShot iPhone4](../master/Screenshots/main-2t.png)

## Platform
+ Swift
+ iOS 8
+ Xcode 6.4

##Supported Device
iPhone 4s, 5, 5s, 5c, 6, 6 Plus, iPad having iOS8.

## Features
+ Easy to use within any Swift application.
+ Using key/value storage. (NSUserDefaults)
+ Created with swift, iOS 8. No other dependency.
+ Just copy and paste ``SettingsManger.swift`` file.
+ Settings value can be accessible from anywhere in the project.
+ Returns default value when application installed and run first time.
+ You can change default value within ``SettingsManager.swift`` file.
+ You can add more settings within ``SettingsManager.swift`` file.

## How To Use
+ Copy and paste ``SettingsManager.swift`` file within your swift project.
+ Prepare settings screen visual inteface as per your preference OR use my demo project's screen.
+ Use ``SettingsManager.sharedInstance`` anywhere to read/write settings value.

<pre>
// set value within settings manager
SettingsManager.sharedInstance.refreshTime = 14

// read value from settings manager
let refreshTimeValue = Int(SettingsManager.sharedInstance.refreshTime)
</pre>


## Screenshots

**iPhone 4S**

![ScreenShot iPhone4s](../master/Screenshots/main-1t.png)
![ScreenShot iPhone4S](../master/Screenshots/main-2t.png)

**iPhone 5**

![ScreenShot iPhone5](../master/Screenshots/main-1t.png)
![ScreenShot iPhone5](../master/Screenshots/main-2t.png)

**iPhone 6**

![ScreenShot iPhone6](../master/Screenshots/iphone6-2t.png)
![ScreenShot iPhone6](../master/Screenshots/iphone6-1t.png)

**iPad**

![ScreenShot iPad](../master/Screenshots/ipad-1t.png)
![ScreenShot iPad](../master/Screenshots/ipad-2t.png)


## License
SwiftSettingsManager is available under the MIT license. See the LICENSE file for more info.


