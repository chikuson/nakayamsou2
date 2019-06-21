//
//  numberViewController.swift
//  nakayamasou2
//
//  Created by 文　裕誠 on 2019/06/18.
//  Copyright © 2019 yuson. All rights reserved.
//

import UIKit
import SafariServices

class numberViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func callButton(_ sender: Any) {
        if let url = URL(string: "tel://\(0810915783132)") {
            UIApplication.shared.openURL(url)
        }
        
//        guard let number = URL(string: "tel://" + ) else { return }
//        UIApplication.shared.open(number)
//        
    }
    
    @IBAction func urlButton(_ sender: Any) {
        
        guard let url = URL(string: "http://www.hachimantai-ss.co.jp/~nakayamasou/access.html") else { return }
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
