//
//  StartSplash.swift
//  RockysBoots
//
//  Created by Michael Pardi on 2/22/17.
//  Copyright © 2017 ASU. All rights reserved.
//

import Cocoa
import SpriteKit

class StartSplash: SKScene {
    var contentCreated = false
    var clickCount = 0
    
    override func didMove(to view: SKView) {
        backgroundColor =   SKColor.black;
        scaleMode = .aspectFit
        if contentCreated == false {
            createSceneContents()
            contentCreated = true
        }
    }
    
    //This and DispatchLevel aide in adding delay, copy and paste to help later
    public func delay(bySeconds seconds: Double, dispatchLevel: DispatchLevel = .main, closure: @escaping () -> Void) {
        let dispatchTime = DispatchTime.now() + seconds
        dispatchLevel.dispatchQueue.asyncAfter(deadline: dispatchTime, execute: closure)
    }
    
    public enum DispatchLevel {
        case main, userInteractive, userInitiated, utility, background
        var dispatchQueue: DispatchQueue {
            switch self {
            case .main:                 return DispatchQueue.main
            case .userInteractive:      return DispatchQueue.global(qos: .userInteractive)
            case .userInitiated:        return DispatchQueue.global(qos: .userInitiated)
            case .utility:              return DispatchQueue.global(qos: .utility)
            case .background:           return DispatchQueue.global(qos: .background)
            }
        }
    }
    
    func createSceneContents() {
        let textNode1 = SKLabelNode(fontNamed: "Futura")
        let label: String = "A Game By Michael Pardi"
        textNode1.text = label
        textNode1.fontSize = 24
        textNode1.position = CGPoint(x: size.width / 2.0, y: (size.height / 2.0) - 150)
        textNode1.name = "HelloText"
        addChild(textNode1)
        
        let logoText = SKTexture(imageNamed: "Logo1.png")
        let logoSpot = SKSpriteNode(texture: logoText, size: CGSize(width: frame.width, height: frame.height))
        logoSpot.position = CGPoint(x: frame.size.width / 2 + 16, y: frame.size.height / 2)
        addChild(logoSpot)
        scaleMode = .aspectFit
        
        delay(bySeconds: 10) {
            let newScene = MainMenuScene(size: self.size)
            let fade = SKTransition.fade(withDuration: 2.0)
            self.view?.presentScene(newScene, transition: fade)
        }
    }
    
    override func mouseDown(with event: NSEvent) {
        //Multi-threaded, so the actions will run at the same time as our print statement.
        clickCount += 1
        if clickCount == 1 {
            //            if let node1 = childNode(withName: "HelloText") {
            //                let moveUp = SKAction.moveBy(x: 0.0, y: 100.0, duration: 1.0)
            //                let zoom = SKAction.scale(to: 1.5, duration: 1.0)
            //                let pause = SKAction.wait(forDuration: 0.5)
            //                let fadeAway = SKAction.fadeOut(withDuration: 1.5)
            //                let remove = SKAction.removeFromParent()
            //                let sequence = SKAction.sequence([moveUp, zoom, pause, fadeAway, remove])
            //                let sequence = SKAction.sequence([fadeAway, remove])
            //
            //                node1.run(sequence, completion: {
            //                    let newScene = MainMenuScene(size: self.size)
            //                    //let doors = SKTransition.doorsOpenVertical(withDuration: 0.5)
            //                    let doors = SKTransition.fade(withDuration: 1.0)
            //                    self.view?.presentScene(newScene, transition: doors)
            //                })
            let newScene = MainMenuScene(size: self.size)
            //let doors = SKTransition.doorsOpenVertical(withDuration: 0.5)
            let fade = SKTransition.fade(withDuration: 2.0)
            self.view?.presentScene(newScene, transition: fade)
        }
    }
}
