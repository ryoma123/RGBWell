//
//  AppDelegate.swift
//  RGBWell
//
//  Created by usr0600328 on 2015/06/22.
//  Copyright (c) 2015年 ryoma. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    var mainWindowController: MainWindowController?
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Create a window controller
        let mainWindowController = MainWindowController()
        // Put the window of the window controller on screen
        mainWindowController.showWindow(self)
        
        // Set the property to point to the window controller
        self.mainWindowController = mainWindowController
    }

}
