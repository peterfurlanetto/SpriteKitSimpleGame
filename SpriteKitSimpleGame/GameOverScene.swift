//
//  GameOverScene.swift
//  SpriteKitSimpleGame
//
//  Created by Peter Furlanetto on 1/26/17.
//  Copyright © 2017 Petorius. All rights reserved.
//

import Foundation
import SpriteKit

class GameOverScene: SKScene {
    
    init(size: CGSize, won:Bool) {
        
        super.init(size: size)
        
        // 1
        backgroundColor = SKColor.cyan
        
        // 2
        let outcomeMessage = won ? "You Won!" : "You SUCK!!!"
        
        // 3
        let outcomeLabel = SKLabelNode(fontNamed: "Chalkduster")
        outcomeLabel.text = outcomeMessage
        outcomeLabel.fontSize = 40
        outcomeLabel.fontColor = SKColor.black
        outcomeLabel.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(outcomeLabel)
        
        let playAgainMessage = won ? "tap to play again!" : "tap to LOSE again! ;-P"
        
        let playLabel = SKLabelNode(fontNamed: "Chalkduster")
        playLabel.text = playAgainMessage
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
