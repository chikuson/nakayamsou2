//
//  MainViewController.swift
//  nakayamasou2
//
//  Created by 文　裕誠 on 2019/06/16.
//  Copyright © 2019 yuson. All rights reserved.
//

import UIKit
import SafariServices
class MainViewController: UIViewController {//, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var pageControl: UIPageControl!
    
    
    
    
    @IBAction func urlButton(_ sender: UIButton) {
      
        guard let url = URL(string: "https://www.yadoken.jp/pg/FrontCtrlShowPlanRecommendation.php?hotel_id=yk104655") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
            // scrollViewの画面表示サイズを指定
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 180, width: self.view.frame.size.width, height: 180))
        // scrollViewのサイズを指定
        scrollView.contentSize = CGSize(width: self.view.frame.size.width*3, height: 150)
        // scrollViewのデリゲート
        scrollView.delegate = self
        // スクロールを可能にする
        scrollView.isPagingEnabled = true
        // スクロールインジケータを表示にする
        scrollView.showsHorizontalScrollIndicator = true
        self.view.addSubview(scrollView)
        
        // scrollView上にUIImageViewを追加
        let imageView1 = createImageView(x: 0, y: 0, width: self.view.frame.size.width, height: 150, image: "IMG_3523-1")
        scrollView.addSubview(imageView1)
        
        let imageView2 = createImageView(x: self.view.frame.size.width, y: 0, width: self.view.frame.size.width, height: 150, image: "IMG_3519")
        scrollView.addSubview(imageView2)
        
        let imageView3 = createImageView(x: self.view.frame.size.width*2, y: 0, width: self.view.frame.size.width, height: 150, image: "IMG_3526")
        scrollView.addSubview(imageView3)
        
        
        
        // pageControlの表示位置とサイズの設定  変更箇所
        pageControl = UIPageControl(frame: CGRect(x: 0, y: 310, width: self.view.frame.size.width, height: 20))
        // pageControlのページ数を設定
        pageControl.numberOfPages = 3
        // pageControlのドットの色
        pageControl.pageIndicatorTintColor = UIColor.lightGray
        // pageControlの現在のページのドットの色
        pageControl.currentPageIndicatorTintColor = UIColor.black
        self.view.addSubview(pageControl)
}
    
    // UIImageViewを生成
    func createImageView(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, image: String) -> UIImageView {
        let imageView = UIImageView(frame: CGRect(x: x, y: y, width: width, height: height))
        let image = UIImage(named:  image)
        imageView.image = image
        return imageView
    }
}
// scrollViewのページ移動に合わせてpageControlの表示も移動させる
extension MainViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.size.width)
    }
}

