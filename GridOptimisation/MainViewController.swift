//
//  MainViewController.swift
//  GridOptimisation
//
//  Created by Hai NGUYEN on 25/06/2015.
//  Copyright (c) 2015 Hai NGUYEN. All rights reserved.
//

import UIKit
import AVFoundation

class MainViewController: UIViewController {
    
    @IBOutlet weak var containerView1: AVPlayerView!
    @IBOutlet weak var containerView2: AVPlayerView!
    @IBOutlet weak var containerView3: AVPlayerView!
    @IBOutlet weak var containerView4: AVPlayerView!
    
    private var constraints = [NSLayoutConstraint]()
    private var containerView2Height: NSLayoutConstraint!
    private var containerView2Width: NSLayoutConstraint!
    private var containerView3Height: NSLayoutConstraint!
    private var containerView3Width: NSLayoutConstraint!
    private var containerView4Height: NSLayoutConstraint!
    private var containerView4Width: NSLayoutConstraint!
    
    @IBAction func grid1x4() {
        if constraints.count != 0 {
            removeAllConstraints(constraints)
        }
        
        appendSharedConstraints()
        
        // Container View 1 constraints
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: .Bottom, relatedBy: .Equal, toItem: containerView2, attribute: .Top, multiplier: 1, constant: 0))
        
        // Container View 2 constraint
        constraints.append(NSLayoutConstraint(item: containerView2, attribute: .Bottom, relatedBy: .Equal, toItem: containerView3, attribute: .Top, multiplier: 1, constant: 0))
        
        // Container View 3 constraint
        constraints.append(NSLayoutConstraint(item: containerView3, attribute: .Bottom, relatedBy: .Equal, toItem: containerView4, attribute: .Top, multiplier: 1, constant: 0))
        
        // Container View 4 constraint
        constraints.append(NSLayoutConstraint(item: containerView4, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1, constant: 0))
        
        addAllConstraints(constraints)
    }

    @IBAction func grid2x2() {
        if constraints.count != 0 {
            removeAllConstraints(constraints)
        }
        
        appendSharedConstraints()
        
        // Container View 1 constraints
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: .Right, relatedBy: .Equal, toItem: containerView2, attribute: .Left, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: .Bottom, relatedBy: .Equal, toItem: containerView3, attribute: .Top, multiplier: 1, constant: 0))
        
        // Container View 2 constraints
        constraints.append(NSLayoutConstraint(item: containerView2, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: containerView2, attribute: .Bottom, relatedBy: .Equal, toItem: containerView4, attribute: .Top, multiplier: 1, constant: 0))
        
        // Container View 3 constraints
        constraints.append(NSLayoutConstraint(item: containerView3, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: containerView3, attribute: .Right, relatedBy: .Equal, toItem: containerView4, attribute: .Left, multiplier: 1, constant: 0))
        
        // Container View 4 constraints
        constraints.append(NSLayoutConstraint(item: containerView4, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: containerView4, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1, constant: 0))
        
        addAllConstraints(constraints)
    }
    
    @IBAction func grid4x1() {
        if constraints.count != 0 {
            removeAllConstraints(constraints)
        }
        
        appendSharedConstraints()
        
        // Container View 1 constraints
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: .Right, relatedBy: .Equal, toItem: containerView2, attribute: .Left, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1, constant: 0))
        
        // Container View 2 constraint
        constraints.append(NSLayoutConstraint(item: containerView2, attribute: .Right, relatedBy: .Equal, toItem: containerView3, attribute: .Left, multiplier: 1, constant: 0))
        
        // Container View 3 constraint
        constraints.append(NSLayoutConstraint(item: containerView3, attribute: .Right, relatedBy: .Equal, toItem: containerView4, attribute: .Left, multiplier: 1, constant: 0))
        
        // Container View 4 constraint
        constraints.append(NSLayoutConstraint(item: containerView4, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1, constant: 0))
        
        addAllConstraints(constraints)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        updateWidthAndHeight()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadVideos()
        grid2x2()
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    private func addWidthAndHeight() {
        // Container View 2 Height and Width
        containerView2Height = NSLayoutConstraint(item: containerView2, attribute: .Height, relatedBy: .Equal, toItem: containerView1, attribute: .Height, multiplier: 1, constant: 0)
        containerView2Width = NSLayoutConstraint(item: containerView2, attribute: .Width, relatedBy: .Equal, toItem: containerView1, attribute: .Width, multiplier: 1, constant: 0)
        
        // Container View 3 Height and Width
        containerView3Height = NSLayoutConstraint(item: containerView3, attribute: .Height, relatedBy: .Equal, toItem: containerView1, attribute: .Height, multiplier: 1, constant: 0)
        containerView3Width = NSLayoutConstraint(item: containerView3, attribute: .Width, relatedBy: .Equal, toItem: containerView1, attribute: .Width, multiplier: 1, constant: 0)
        
        // Container View 4 Height and Width
        containerView4Height = NSLayoutConstraint(item: containerView4, attribute: .Height, relatedBy: .Equal, toItem: containerView1, attribute: .Height, multiplier: 1, constant: 0)
        containerView4Width = NSLayoutConstraint(item: containerView4, attribute: .Width, relatedBy: .Equal, toItem: containerView1, attribute: .Width, multiplier: 1, constant: 0)
        
        view.addConstraint(containerView2Height)
        view.addConstraint(containerView2Width)
        view.addConstraint(containerView3Height)
        view.addConstraint(containerView3Width)
        view.addConstraint(containerView4Height)
        view.addConstraint(containerView4Width)
    }
    
    private func removeWidthAndHeight() {
        view.removeConstraint(containerView2Height)
        view.removeConstraint(containerView2Width)
        view.removeConstraint(containerView3Height)
        view.removeConstraint(containerView3Width)
        view.removeConstraint(containerView4Height)
        view.removeConstraint(containerView4Width)
    }
    
    private func updateWidthAndHeight() {
        removeWidthAndHeight()
        addWidthAndHeight()
    }
    
    private func appendSharedConstraints() {
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1, constant: 0))
    }
    
    private func addAllConstraints(constraint: [NSLayoutConstraint]) {
        addWidthAndHeight()
        for i in 0...(constraint.count-1) {
            view.addConstraint(constraint[i])
        }
    }
    
    private func removeAllConstraints(constraint: [NSLayoutConstraint]) {
        for i in 0...(constraint.count-1) {
            view.removeConstraint(constraint[i])
        }
        constraints.removeAll(keepCapacity: false)
        removeWidthAndHeight()
    }
    
    private var playerItem: AVPlayerItem?
    private var videoPlayer: AVPlayer?
    private var videoNumber = 0
    private var urls = ["http://fun.siz.io/stories/142893791787803c7fb48f4d/0.mp4",
                        "http://fun.siz.io/stories/142893791787803c7fb48f4d/1.mp4",
                        "http://fun.siz.io/stories/142893791787803c7fb48f4d/2.mp4",
                        "http://fun.siz.io/stories/142893791787803c7fb48f4d/3.mp4"]
    
    private func loadVideos() {
        for i in 0...3 {
            var url = NSURL(string: urls[i])
            playerItem = AVPlayerItem(URL: url)
            videoPlayer = AVPlayer(playerItem: playerItem)
            
            if let player = videoPlayer
            {
                player.actionAtItemEnd = .None
                
                switch i {
                case 0: containerView1?.setPlayer(player)
                        containerView1?.setVideoFillMode(AVLayerVideoGravityResizeAspect)
                case 1: containerView2?.setPlayer(player)
                        containerView2?.setVideoFillMode(AVLayerVideoGravityResizeAspect)
                case 2: containerView3?.setPlayer(player)
                        containerView3?.setVideoFillMode(AVLayerVideoGravityResizeAspect)
                case 3: containerView4?.setPlayer(player)
                        containerView4?.setVideoFillMode(AVLayerVideoGravityResizeAspect)
                default: break
                }
                
                player.play()
            }
        }
    }
}

