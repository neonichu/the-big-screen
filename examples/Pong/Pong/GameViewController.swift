//
//  GameViewController.swift
//  Pong
//
//  Created by Boris Bügling on 26/10/15.
//  Copyright (c) 2015 Boris Bügling. All rights reserved.
//

import SpriteKit
import UIKit

class GameViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let skView = SKView(frame: self.view.bounds)
        self.view.addSubview(skView)

        if let scene = GameScene(fileNamed: "GameScene") {
            skView.showsFPS = true
            skView.showsNodeCount = true
            skView.ignoresSiblingOrder = true
            scene.scaleMode = .AspectFill
            
            skView.presentScene(scene)
        }
    }
}
