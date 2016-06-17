//
//  AppDelegate.swift
//  SpaceBattle
//
//  Created by Edward Loveall on 6/16/16.
//  Copyright (c) 2016 Edward Loveall. All rights reserved.
//


import Cocoa
import SpriteKit

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  @IBOutlet weak var window: NSWindow!
  @IBOutlet weak var skView: SKView!

  func applicationDidFinishLaunching(aNotification: NSNotification) {
    let scene = GameScene(size: CGSize(width: 1000, height: 250))
    scene.scaleMode = .AspectFit

    skView.presentScene(scene)
    skView.ignoresSiblingOrder = true

    skView.showsFPS = true
    skView.showsNodeCount = true
  }

  func applicationShouldTerminateAfterLastWindowClosed(sender: NSApplication) -> Bool {
    return true
  }
}
