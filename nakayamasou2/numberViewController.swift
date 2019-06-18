//
//  numberViewController.swift
//  nakayamasou2
//
//  Created by 文　裕誠 on 2019/06/18.
//  Copyright © 2019 yuson. All rights reserved.
//

import UIKit

class numberViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func callButton(_ sender: Any) {
        if let url = URL(string: "tel://\(08058843579)") {
            UIApplication.shared.openURL(url)
        }
        
//        guard let number = URL(string: "tel://" + ) else { return }
//        UIApplication.shared.open(number)
//        
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
