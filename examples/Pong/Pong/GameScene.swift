//
//  GameScene.swift
//  Pong
//
//  Created by Boris Bügling on 26/10/15.
//  Copyright (c) 2015 Boris Bügling. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        self.physicsBody = SKPhysicsBody(edgeLoopFromRect: self.frame)
    }
}
