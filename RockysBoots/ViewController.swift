//
//  ViewController.swift
//  RockysBoots
//
//  Created by Michael Pardi on 2/22/17.
//  Copyright © 2017 ASU. All rights reserved.
//

import Cocoa
import SpriteKit
import GameplayKit

class ViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewWillAppear()
        
        let spriteView = view as! SKView
        
        if let visibleFrame = view.window?.screen?.visibleFrame {
            let newFrame = NSRect(x: visibleFrame.origin.x, y: visibleFrame.origin.y + 200.0, width: visibleFrame.width, height: visibleFrame.height - 200.0)
            view.window?.setFrame(newFrame, display:true)
        }
        
        let begin = StartSplash(size: CGSize(width: view.frame.width, height:
            view.frame.height))
        spriteView.presentScene(begin)
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    
}

