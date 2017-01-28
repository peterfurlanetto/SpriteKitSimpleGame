//
//  GameStartScene.swift
//  SpriteKitSimpleGame
//
//  Created by Peter Furlanetto on 1/28/17.
//  Copyright © 2017 Petorius. All rights reserved.
//

import Foundation
import SpriteKit

class GameStartScene: SKScene {
    
    override init(size: CGSize) {
        
        super.init(size: size)
        
        isUserInteractionEnabled = true
        
        // 1
        backgroundColor = SKColor.cyan
        
        // 3
        let titleLabel = SKLabelNode(fontNamed: "Chalkduster")
        titleLabel.text = "Ghost Slayer"
        titleLabel.fontSize = 40
        titleLabel.fontColor = SKColor.black
        titleLabel.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(titleLabel)
        
        let playLabel = SKLabelNode(fontNamed: "Chalkduster")
        playLabel.text = "tap to play!"
        playLabel.fontSize = 18
        playLabel.fontColor = SKColor.black
        playLabel.position = CGPoint(x: size.width/2, y: size.height/2*0.8)
        addChild(playLabel)
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
            run(SKAction.run() {
                // 5
                let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
                let scene = GameScene(size: self.size)
                self.view?.presentScene(scene, transition:reveal)
            }
        )

    }
    
    // 6
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
