//
//  ViewController.swift
//  matchingScreen
//
//  Created by yu on 2019/07/10.
//  Copyright © 2019 yu. All rights reserved.
//
import UIKit

class SelectVC: UIViewController {
    
    // 画像挿入
    let image0 = UIImage(named:"matchfriend")!
    let image1 = UIImage(named:"friendlist")!
    
    
    // 画面の横幅を取得
    var screenWidth:CGFloat = 0
    var screenHeight:CGFloat = 0
    
    // UIButton のインスタンスを生成
    let button_matchfriend = UIButton()
    let button_friendlist = UIButton()
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        // 画面の横幅を取得
        screenWidth = view.frame.size.width
        screenHeight = view.frame.size.height
        
        // Buttonが画面の中央で横幅いっぱいのサイズになるように設定
        button_matchfriend.frame = CGRect(x:0, y:10,
                                          width:screenWidth, height:self.view.center.y)
        button_friendlist.frame = CGRect(x:0, y:self.view.center.y,
                                         width:screenWidth, height:screenWidth)
        button_matchfriend.tag = 0
        
        // 画像を設定
        button_init(button: button_friendlist)
        button_init(button: button_matchfriend)
        // ViewにButtonを追加
        self.view.addSubview(button_matchfriend)
        self.view.addSubview(button_friendlist)
        // 背景色を設定
        self.view.backgroundColor = UIColor.white
        
        //画面遷移
        button_matchfriend.addTarget(self, action: #selector(self.genderselect(_:)), for: .touchUpInside)
        view.addSubview(button_matchfriend)
        
    }
    func button_init(button:UIButton){
        button_matchfriend.setImage(image0, for: .normal)
        button_friendlist.setImage(image1, for: .normal)
        
        
        // Aspect Fit
        button.imageView?.contentMode = .scaleAspectFit
        
        // Horizontal 拡大
        button.contentHorizontalAlignment = .fill
        
        // Vertical 拡大
        button.contentVerticalAlignment = .fill
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func genderselect(_ sender: UIButton) {// selectorで呼び出す場合Swift4からは「@objc」をつける。
        let nextvc = SGViewController()
        nextvc.view.backgroundColor = UIColor.black
        self.present(nextvc, animated: true, completion: nil)
        
        
    }
    
}




