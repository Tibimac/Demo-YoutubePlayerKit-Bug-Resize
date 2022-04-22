//
//  ViewController.swift
//  Demo-YoutubePlayerKit-Bug-Resize
//
//  Created by Thibault Le Cornec on 22/04/2022.
//

import UIKit
import YouTubePlayerKit

class ViewController: UIViewController {
    var playerViewController: YouTubePlayerViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerViewController = YouTubePlayerViewController(source: .video(id: "Hhbz5Sah3dw"), configuration: .init(isUserInteractionEnabled: true,
                                                                                                                   allowsPictureInPictureMediaPlayback: true,
                                                                                                                   autoPlay: false,
                                                                                                                   captionLanguage: nil,
                                                                                                                   showCaptions: false,
                                                                                                                   progressBarColor: .red,
                                                                                                                   showControls: true,
                                                                                                                   keyboardControlsDisabled: false,
                                                                                                                   enableJavaScriptAPI: true,
                                                                                                                   endTime: nil,
                                                                                                                   showFullscreenButton: true,
                                                                                                                   language: nil,
                                                                                                                   showAnnotations: false,
                                                                                                                   loopEnabled: false,
                                                                                                                   useModestBranding: true,
                                                                                                                   playInline: true,
                                                                                                                   showRelatedVideos: false,
                                                                                                                   startTime: nil,
                                                                                                                   referrer: nil))
        
        let playerView: UIView = playerViewController.view
        playerViewController.willMove(toParent: self)
        addChild(playerViewController)
        playerViewController.didMove(toParent: self)
        
        view.addSubview(playerView)
        
        playerView.translatesAutoresizingMaskIntoConstraints = false
        
        playerView.heightAnchor.constraint(equalTo: playerView.widthAnchor, multiplier: 9/16).isActive = true
        playerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        playerView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        playerView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
    }

}


