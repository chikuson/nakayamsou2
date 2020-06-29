//
//  CollectionViewController.swift
//  nakayamasou2
//
//  Created by 文　裕誠 on 2019/09/09.
//  Copyright © 2019 yuson. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource,
UICollectionViewDelegate ,UICollectionViewDelegateFlowLayout {
    //スワイプ用のテキストラベル
    @IBOutlet var textLabel: UILabel!
    
    //写真のラベル編集
    let photos = ["フロント&ロビー", "大広間宴会場","客室8畳和室","カラオケルーム","大浴場マグマの湯",
                  "多目的談話室","多目的ホール","レストランなかやま","大広間宴会場"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let directionList:[UISwipeGestureRecognizer.Direction] = []
        for direction in directionList {
            let swipeRecognizer = UISwipeGestureRecognizer(target: self, action: Selector(("swipeLabel:")));
            swipeRecognizer.direction = direction
            textLabel.addGestureRecognizer(swipeRecognizer)
        }
        
        let cell = UICollectionViewFlowLayout()
//        cell.itemSize = CGSize(width:self.view.frame.width / 2, height:200)
        
         cell.itemSize = CGSize(width:50, height:50)
        // Do any additional setup after loading the view.
    }
    //セルのサイズを自動計算で画面にあわせる関数
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        // 横方向のスペース調整
        let horizontalSpace:CGFloat = 2
        let cellSize:CGFloat = self.view.bounds.width/2 - horizontalSpace
        // 正方形で返すためにwidth,heightを同じにする
        return CGSize(width: cellSize, height: cellSize)
    }

    //スワイプ時の呼び出しメソッド
    func swipeLabel(sender:UISwipeGestureRecognizer) {
        //スワイプした方向をラベルに表示する
        switch (sender.direction) {
        case UISwipeGestureRecognizer.Direction.right: textLabel.text = "右"
            
        default:
            textLabel.text = "右にスワイプしてね！"
        }
    }
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        // "Cell" はストーリーボードで設定したセルのID
        let testCell:UICollectionViewCell =
            collectionView.dequeueReusableCell(withReuseIdentifier: "cell",
                                               for: indexPath)
        
        // Tag番号を使ってImageViewのインスタンス生成
        let imageView = testCell.contentView.viewWithTag(1) as! UIImageView
        // 画像配列の番号で指定された要素の名前の画像をUIImageとする
        let cellImage = UIImage(named: photos[indexPath.row])
        // UIImageをUIImageViewのimageとして設定
        imageView.image = cellImage
        
        // Tag番号を使ってLabelのインスタンス生成
        let label = testCell.contentView.viewWithTag(2) as! UILabel
        label.text = photos[indexPath.row]
        
        return testCell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // section数は１つ
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        // 要素数を入れる、要素以上の数字を入れると表示でエラーとなる
        return photos.count;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
