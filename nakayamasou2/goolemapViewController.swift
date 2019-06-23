//
//  goolemapViewController.swift
//  nakayamasou2
//
//  Created by 田中　徳充 on 2019/06/23.
//  Copyright © 2019 yuson. All rights reserved.
//

import UIKit
import SafariServices
class goolemapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func gooleuyrl(_ sender: Any) {
        
        guard let url = URL(string: "https://www.google.co.jp/maps/place/%E5%85%AB%E5%B9%A1%E5%B9%B3%E5%B8%82%E8%87%AA%E7%84%B6%E4%BC%91%E9%A4%8A%E6%9D%91+%E3%81%AA%E3%81%8B%E3%82%84%E3%81%BE%E8%8D%98/@39.930669,141.002312,13z/data=!4m5!3m4!1s0x5f851543fded62f9:0xdfe05fd693f892eb!8m2!3d39.928574!4d141.00311?hl=ja") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
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
