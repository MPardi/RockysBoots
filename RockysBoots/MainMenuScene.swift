//
//  MainMenuScene.swift
//  RockysBoots
//
//  Created by Michael Pardi on 2/22/17.
//  Copyright © 2017 ASU. All rights reserved.
//

import Cocoa
import SpriteKit

class MainMenuScene: SKScene {
    var contentCreated = false;
    
    override func didMove(to view: SKView) {
        backgroundColor =   SKColor.black;
        scaleMode = .aspectFit
        if contentCreated == false {
            createSceneContents()
            contentCreated = true
        }
    }
    
    func createSceneContents() {
        let button1 = SKShapeNode(rectOf: CGSize(width: 300, height: 75), cornerRadius: 10)
        button1.name = "buttonOne"
        button1.fillColor = SKColor.green
        button1.strokeColor = SKColor.green
        button1.position = CGPoint(x: size.width / 2.0, y: (size.height / 2.0) - 150)
        
        let button2 = SKShapeNode(rectOf: CGSize(width: 300, height: 75), cornerRadius: 10)
        button2.name = "buttonTwo"
        button2.fillColor = SKColor.blue
        button2.strokeColor = SKColor.blue
        button2.position = CGPoint(x: size.width / 2.0, y: (size.height / 2.0) - 40)
        
        self.addChild(button2)
        self.addChild(button1)
    }
    
    override func mouseEntered(with event: NSEvent) {
        
    }
    
    override func mouseMoved(with event: NSEvent) {
        
    }
    
}
