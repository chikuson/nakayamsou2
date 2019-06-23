//
//  TabViewController.swift
//  nakayamasou2
//
//  Created by 文　裕誠 on 2019/06/17.
//  Copyright © 2019 yuson. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {
    class var primary: UIColor {
        return rgbColor(rgbValue: 0x73C6B6)
    }
    
    // 薄いオレンジを返す
    class var secondary: UIColor{
        return rgbColor(rgbValue: 0xFFD6BA)
    }
    
    // 白っぽい灰色を返す
    class var background: UIColor{
        return rgbColor(rgbValue: 0xFAF9F9)
    }
    
    private class func rgbColor(rgbValue: UInt) -> UIColor{
        return UIColor(
            red:   CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >>  8) / 255.0,
            blue:  CGFloat( rgbValue & 0x0000FF)        / 255.0,
            alpha: CGFloat(1.0)
        )
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // -----＊＊追記部分＊＊----- //
        // アイコンの色
        UITabBar.appearance().tintColor = TabViewController.secondary
        // 背景色を変更
        UITabBar.appearance().barTintColor = TabViewController.primary
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
