//
//  text2ViewController.swift
//  nakayamasou2
//
//  Created by 文　裕誠 on 2019/06/21.
//  Copyright © 2019 yuson. All rights reserved.
//

import UIKit

class text2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.textView.isEditable = false
        self.textView.isSelectable = false
        
        
    }
    @IBOutlet var textView: UITextView!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
