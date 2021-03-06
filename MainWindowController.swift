//
//  MainWindowController.swift
//  RGBWell
//
//  Created by usr0600328 on 2015/06/22.
//  Copyright (c) 2015年 ryoma. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    var r = 0.0
    var g = 0.0
    var b = 0.0
    let a = 1.0
    
    @IBOutlet weak var rSlider: NSSlider!
    @IBOutlet weak var gSlider: NSSlider!
    @IBOutlet weak var bSlider: NSSlider!
    
    @IBOutlet weak var colorWell: NSColorWell!
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        rSlider.doubleValue = r
        gSlider.doubleValue = g
        bSlider.doubleValue = b
        updateColor()
    }

    @IBAction func adjustRed(sender: NSSlider) {
        println("R slider's value is \(sender.floatValue)")
        r = sender.doubleValue
        updateColor()
    }

    @IBAction func adjustGreen(sender: NSSlider) {
        println("G slider's value is \(sender.floatValue)")
        g = sender.doubleValue
        updateColor()
    }

    @IBAction func adjustBlue(sender: NSSlider) {
        println("B slider's value is \(sender.floatValue)")
        b = sender.doubleValue
        updateColor()
    }
    
    func updateColor() {
        let newColor = NSColor(calibratedRed: CGFloat(r),
                                       green: CGFloat(g),
                                        blue: CGFloat(b),
                                       alpha: CGFloat(a))
        colorWell.color = newColor
    }
}
