//
//  GameScene.swift
//  SpaceBattle
//
//  Created by Edward Loveall on 6/16/16.
//  Copyright (c) 2016 Edward Loveall. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
    }

    override func mouseDown(theEvent: NSEvent) {
      /* Called when a mouse click occurs */

      let location = theEvent.locationInNode(self)

      let sprite = SKSpriteNode(color: SKColor.blueColor(),
                                size: CGSize(width: 20, height: 20))
      sprite.position = location;

      let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
      sprite.runAction(SKAction.repeatActionForever(action))

      self.addChild(sprite)
    }

    override func update(currentTime: CFTimeInterval) {
      /* Called before each frame is rendered */
    }
}
