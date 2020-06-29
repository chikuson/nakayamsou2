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
    @IBAction func urlButton(_ sender: UIButton) {
      
        guard let url = URL(string: "https://www.yadoken.jp/pg/FrontCtrlShowPlanRecommendation.php?hotel_id=yk104655") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//            // scrollViewの画面表示サイズを指定
//    scrollView = UIScrollView(frame: CGRect(x: 0, y: 100, width: self.view.frame.size.width, height: 130))
//        // scrollViewのサイズを指定
//            scrollView.contentSize = CGSize(width: self.view.frame.size.width*3, height: 80)
//        // scrollViewのデリゲート
//        scrollView.delegate = self
//        // スクロールを可能にする
//        scrollView.isPagingEnabled = true
//        // スクロールインジケータを表示にする
//        scrollView.showsHorizontalScrollIndicator = true
//        self.view.addSubview(scrollView)
//
//        // scrollView上にUIImageViewを追加
//        let imageView1 = createImageView(x: 0, y: 0, width: self.view.frame.size.width, height: 150, image: "IMG_3527")
//        scrollView.addSubview(imageView1)
//
//        let imageView2 = createImageView(x: self.view.frame.size.width, y: 0, width: self.view.frame.size.width, height: 150, image: "2f0a5_0001451950_1")
//        scrollView.addSubview(imageView2)
//
//        let imageView3 = createImageView(x: self.view.frame.size.width, y: 0, width: self.view.frame.size.width, height: 150, image: "安比高原")
//        scrollView.addSubview(imageView3)
//
//
//
//        // pageControlの表示位置とサイズの設定  変更箇所
//       pageControl = UIPageControl(frame: CGRect(x: 0, y: 240, width: self.view.frame.size.width, height: 20))
//        // pageControlのページ数を設定
//       pageControl.numberOfPages = 3
//        // pageControlのドットの色
//      pageControl.pageIndicatorTintColor = UIColor.black
//        // pageControlの現在のページのドットの色
//        pageControl.currentPageIndicatorTintColor = UIColor.black
//       // self.view.addSubview(pageControl)
}
     func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        for touch: UITouch in touches {
            let tag = touch.view!.tag
            if tag == 1 {
                dismiss(animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func didTapClose(sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
//    // UIImageViewを生成
//    func createImageView(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, image: String) -> UIImageView {
//        let imageView = UIImageView(frame: CGRect(x: x, y: y, width: width, height: height))
//        let image = UIImage(named:  image)
//        imageView.image = image
//        return imageView
//    }
//}
//// scrollViewのページ移動に合わせてpageControlの表示も移動させる
//extension MainViewController: UIScrollViewDelegate {
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.size.width)
//    }
}

