//
//  GameScene.swift
//  SpaceBattle
//
//  Created by Edward Loveall on 6/16/16.
//  Copyright (c) 2016 Edward Loveall. All rights reserved.
//

import GameplayKit
import SpriteKit

class GameScene: SKScene {
  let agentSystem = GKComponentSystem(componentClass: GKAgent2D.self)
  var lastUpdatedTime: CFTimeInterval = 0

  var centerPoint: float2 {
    let centerX = Float(CGRectGetMidX(frame))
    let centerY = Float(CGRectGetMidY(frame))
    return float2(x: centerX, y: centerY)
  }

  override func mouseDown(theEvent: NSEvent) {
    let location = theEvent.locationInNode(self)
    let node = AgentNode(startPoint: location)

    addChild(node)
    agentSystem.addComponent(node.agent)
  }

  override func update(currentTime: CFTimeInterval) {
    if lastUpdatedTime == 0 {
      lastUpdatedTime = currentTime
    }

    let delta = currentTime - lastUpdatedTime
    lastUpdatedTime = currentTime
    agentSystem.updateWithDeltaTime(delta)
  }
}
