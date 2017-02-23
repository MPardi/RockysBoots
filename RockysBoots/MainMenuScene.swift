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
        
    }
    
}
