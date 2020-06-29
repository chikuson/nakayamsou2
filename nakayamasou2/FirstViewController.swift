//
//  FirstViewController.swift
//  nakayamasou2
//
//  Created by 文　裕誠 on 2019/06/13.
//  Copyright © 2019 yuson. All rights reserved.
//

import UIKit
import AVFoundation

class FirstViewController: UIViewController {

    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        self.button.layer.borderColor = UIColor.black.cgColor                            // 枠線の色
        self.button.layer.cornerRadius = 5.0
        // Do any additional setup after loading the view.
        // Bundle Resourcesからsample.mp4を読み込んで再生
        let path = Bundle.main.path(forResource: "390214194mp4", ofType: "mp4")!
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        player.play()
        
        
        // AVPlayer用のLayerを生成
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = view.bounds
        playerLayer.videoGravity = .resizeAspectFill
        playerLayer.zPosition = -1 // ボタン等よりも後ろに表示
        view.layer.insertSublayer(playerLayer, at: 0) // 動画をレイヤーとして追加
        
        let label = UILabel(frame: CGRect(x: 0, y: 100, width: 200, height: 40))
        label.text = "Hello!"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textAlignment = .center
        label.center.x = view.center.x
        label.autoresizingMask = [.flexibleWidth, .flexibleBottomMargin]
        view.addSubview(label)
       // let image:UIImage! = UIImage(named:"nakayama logo1610_アートボード １ (1)")
        //動画のリピート
//        let playerObserver = NotificationCenter.default.addObserver(
//            forName: .AVPlayerItemDidPlayToEndTime,
//            object: player.currentItem,
//            queue: .main) { [weak playerLayer] _ in
//                playerLayer?.player?.seek(to: CMTime.zero)
//                playerLayer?.player?.play()
        
                self.button.layer.borderColor = UIColor.black.cgColor                            // 枠線の色
                self.button.layer.cornerRadius = 5.0

        }
    
  //    let label = UILabel(frame: CGRect(x: 0, y: 100, width: 200, height: 40))
//    label.text = "Hello!"
//    label.textColor = .white
//    label.font = UIFont.boldSystemFont(ofSize: 50)
//    label.textAlignment = .center
//    label.center.x = view.center.x
//    label.autoresizingMask = [.flexibleWidth, .flexibleBottomMargin]
//    view.addSubview(label)
//
//    let loginButton = UIButton(frame: (x: 30, y: view.frame.height - 150, width: view.frame.width - 60, height: 50))
//    loginButton.setTitle("LOG IN", for: .normal)
//    loginButton.setTitleColor(.white, for: .normal)
//    loginButton.layer.borderWidth = 1
//    loginButton.layer.borderColor = UIColor.white.cgColor
//    loginButton.layer.cornerRadius = 4
//    loginButton.autoresizingMask = [.flexibleWidth, .flexibleTopMargin]
//    view.addSubview(loginButton)
//
//    let signupButton = UIButton(frame: loginButton.frame)
//    signupButton.frame.origin.y = loginButton.frame.minY - 60
//    signupButton.setTitle("SIGN UP", for: .normal)
//    signupButton.setTitleColor(.white, for: .normal)
//    signupButton.backgroundColor = UIColor(red: 0, green: 168.0/255, blue: 107.0/255, alpha: 1)
//    signupButton.layer.cornerRadius = 4
//    signupButton.autoresizingMask = [.flexibleWidth, .flexibleTopMargin]
//    view.addSubview(signupButton



}
