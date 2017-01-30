//
//  TuckFrumpScene.swift
//  SpriteKitSimpleGame
//
//  Created by Peter Furlanetto on 1/29/17.
//  Copyright © 2017 Petorius. All rights reserved.
//

import Foundation
import SpriteKit

class TuckFrumpScene: SKScene {
    
    override init(size: CGSize) {
        
        super.init(size: size)
        
        isUserInteractionEnabled = true
        
        // 1
        backgroundColor = SKColor.white
    }
    
    // 6
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
