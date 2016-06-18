//
//  Agent.swift
//  SpaceBattle
//
//  Created by Edward Loveall on 6/17/16.
//  Copyright © 2016 Edward Loveall. All rights reserved.
//

import GameplayKit
import SpriteKit

class AgentNode: SKNode, GKAgentDelegate {
  let agent = GKAgent2D()
  let sprite = SKSpriteNode(color: SKColor.cyanColor(),
                            size: CGSize(width: 30, height: 10))

  init(startPoint: CGPoint) {
    super.init()

    addChild(sprite)

    agent.delegate = self
    agent.position = float2(Float(startPoint.x), Float(startPoint.y))
    agent.radius = 10
    agent.maxSpeed = 100
    agent.maxAcceleration = 50
    agent.behavior = GKBehavior(goal: GKGoal(toWander: 10), weight: 100)

    self.position = position
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  func agentWillUpdate(agent: GKAgent) {}

  func agentDidUpdate(agent: GKAgent) {
    guard let agent = agent as? GKAgent2D else {
      fatalError("could not create GKAgent2D from GKAgent")
    }

    self.position = CGPoint(x: CGFloat(agent.position.x),
                            y: CGFloat(agent.position.y))
    self.zRotation = CGFloat(agent.rotation)
  }
}
