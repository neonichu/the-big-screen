//
//  GameScene.swift
//  Pong
//
//  Created by Boris Bügling on 26/10/15.
//  Copyright (c) 2015 Boris Bügling. All rights reserved.
//

import GameController
import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        self.physicsBody = SKPhysicsBody(edgeLoopFromRect: self.frame)

        NSNotificationCenter.defaultCenter().addObserverForName(GCControllerDidConnectNotification, object: nil, queue: nil) { (note) in
            if let controller = note.object as? GCController {
                if let microPad = controller.microGamepad {
                    microPad.dpad.valueChangedHandler = { (_, x, y) in
                        if let paddle = self.childNodeWithName("Paddle") {
                            paddle.position.y += CGFloat(y)
                        }
                    }
                }
            }
        }
    }
}
