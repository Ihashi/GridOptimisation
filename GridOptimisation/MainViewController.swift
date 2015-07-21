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
    private var containerView1Height: NSLayoutConstraint!
    private var containerView1Width: NSLayoutConstraint!
    private var containerView2Height: NSLayoutConstraint!
    private var containerView2Width: NSLayoutConstraint!
    private var containerView3Height: NSLayoutConstraint!
    private var containerView3Width: NSLayoutConstraint!
    private var containerView4Height: NSLayoutConstraint!
    private var containerView4Width: NSLayoutConstraint!
    
    private var currentGrid: String!
    
    @IBAction func grid1x4() {
        currentGrid = "Grid 1x4"
        if constraints.count != 0 {
            removeAllConstraints(constraints)
        }
        
        // Container View 1 constraints
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: containerView2, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0))
        
        // Container View 2 constraints
        constraints.append(NSLayoutConstraint(item: containerView2, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView2, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView2, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: containerView3, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0))
        
        // Container View 3 constraints
        constraints.append(NSLayoutConstraint(item: containerView3, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView3, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView3, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: containerView4, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0))
        
        // Container View 4 constraints
        constraints.append(NSLayoutConstraint(item: containerView4, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView4, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView4, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0))
        
        addAllConstraints(constraints)
    }

    @IBAction func grid2x2() {
        currentGrid = "Grid 2x2"
        if constraints.count != 0 {
            removeAllConstraints(constraints)
        }
        
        // Container View 1 constraints
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: containerView2, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: containerView3, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0))
        
        // Container View 2 constraints
        constraints.append(NSLayoutConstraint(item: containerView2, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView2, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView2, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: containerView4, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0))
        
        // Container View 3 constraints
        constraints.append(NSLayoutConstraint(item: containerView3, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView3, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: containerView4, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView3, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0))
        
        // Container View 4 constraints
        constraints.append(NSLayoutConstraint(item: containerView4, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView4, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0))
        
        addAllConstraints(constraints)
    }
    
    @IBAction func grid4x1() {
        currentGrid = "Grid 4x1"
        if constraints.count != 0 {
            removeAllConstraints(constraints)
        }
        
        // Container View 1 constraints
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: containerView2, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView1, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0))
        
        // Container View 2 constraints
        constraints.append(NSLayoutConstraint(item: containerView2, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: containerView3, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView2, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView2, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0))
        
        // Container View 3 constraints
        constraints.append(NSLayoutConstraint(item: containerView3, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: containerView4, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView3, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView3, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0))
        
        // Container View 4 constraints
        constraints.append(NSLayoutConstraint(item: containerView4, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView4, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0))
        constraints.append(NSLayoutConstraint(item: containerView4, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0))
        
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
        var videoGridHeight: CGFloat!
        var videoGridWidth: CGFloat!
        
        switch(currentGrid) {
        case "Grid 2x2":
            videoGridHeight = view.bounds.height/2
            videoGridWidth = view.bounds.width/2
        case "Grid 4x1":
            videoGridHeight = view.bounds.height
            videoGridWidth = view.bounds.width/4
        case "Grid 1x4":
            videoGridHeight = view.bounds.height/4
            videoGridWidth = view.bounds.width
        default:
            break
        }
        
        // Container View 1 Height and Width
        containerView1Height = NSLayoutConstraint(item: containerView1, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: videoGridHeight)
        containerView1Width = NSLayoutConstraint(item: containerView1, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: videoGridWidth)
        
        // Container View 2 Height and Width
        containerView2Height = NSLayoutConstraint(item: containerView2, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: videoGridHeight)
        containerView2Width = NSLayoutConstraint(item: containerView2, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: videoGridWidth)
        
        // Container View 3 Height and Width
        containerView3Height = NSLayoutConstraint(item: containerView3, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: videoGridHeight)
        containerView3Width = NSLayoutConstraint(item: containerView3, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: videoGridWidth)
        
        // Container View 4 Height and Width
        containerView4Height = NSLayoutConstraint(item: containerView4, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: videoGridHeight)
        containerView4Width = NSLayoutConstraint(item: containerView4, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: videoGridWidth)
        
        view.addConstraint(containerView1Height)
        view.addConstraint(containerView1Width)
        view.addConstraint(containerView2Height)
        view.addConstraint(containerView2Width)
        view.addConstraint(containerView3Height)
        view.addConstraint(containerView3Width)
        view.addConstraint(containerView4Height)
        view.addConstraint(containerView4Width)
    }
    
    private func removeWidthAndHeight() {
        view.removeConstraint(containerView1Height)
        view.removeConstraint(containerView1Width)
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

