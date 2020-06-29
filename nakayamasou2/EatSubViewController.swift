//
//  EatSubViewController.swift
//  nakayamasou2
//
//  Created by 文　裕誠 on 2019/09/23.
//  Copyright © 2019 yuson. All rights reserved.
//

import UIKit

class EatSubViewController: UIViewController {

    
    @IBOutlet var iamgeView: UIImageView!
    var selectedImg: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        iamgeView.image = selectedImg
        // 画像のアスペクト比を維持しUIImageViewサイズに収まるように表示
        iamgeView.contentMode = UIView.ContentMode.scaleAspectFit
        // Do any additional setup after loading the view.
    }
    
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
