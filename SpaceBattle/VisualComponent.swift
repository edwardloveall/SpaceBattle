//
//  VisualComponent.swift
//  SpaceBattle
//
//  Created by Edward Loveall on 6/17/16.
//  Copyright © 2016 Edward Loveall. All rights reserved.
//

import SpriteKit
import GameplayKit

class VisualComponent: GKComponent {
  let scene: GameScene
  let sprite: SKSpriteNode

  init(scene: GameScene, sprite: SKSpriteNode) {
    self.scene = scene
    self.sprite = sprite
  }
}