//
//  genderselect.swift
//  matchingScreen
//
//  Created by yu on 2019/07/10.
//  Copyright © 2019 yu. All rights reserved.
//



import UIKit

class SGViewController: UIViewController {
    
    
    // 画像挿入
    let image0 = UIImage(named:"women")!
    let image1 = UIImage(named:"men")!
    
    
    // 画面の横幅を取得
    var screenWidth:CGFloat = 0
    var screenHeight:CGFloat = 0
    
    // UIButton のインスタンスを生成
    let button_women = UIButton()
    let button_men = UIButton()
    //back button
    let backButton = UIButton(frame: CGRect(x: 0,y: 0,width: 100,height:100))
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        backButton.setTitle("back！", for: .normal)
        backButton.backgroundColor = UIColor.green
        
        
        
        // 画面の横幅を取得
        screenWidth = view.frame.size.width
        screenHeight = view.frame.size.height
        
        // Buttonが画面の中央で横幅いっぱいのサイズになるように設定
        button_women.frame = CGRect(x:0, y:10,
                                    width:screenWidth, height:self.view.center.y)
        button_men.frame = CGRect(x:0, y:self.view.center.y,
                                  width:screenWidth, height:screenWidth)
        
        // 画像を設定
        button_women.setImage(image0, for: .normal)
        button_men.setImage(image1, for: .normal)
        
        // Aspect Fit
        button_women.imageView?.contentMode = .scaleAspectFit
        button_men.imageView?.contentMode = .scaleAspectFit
        // Horizontal 拡大
        button_women.contentHorizontalAlignment = .fill
        button_men.contentHorizontalAlignment = .fill
        // Vertical 拡大
        button_women.contentVerticalAlignment = .fill
        button_men.contentVerticalAlignment = .fill
        
        // ViewにButtonを追加
        self.view.addSubview(button_women)
        self.view.addSubview(button_men)
        // 背景色を設定
        self.view.backgroundColor = UIColor.black
        
        //画面遷移 men button
        
        button_men.addTarget(self, action: #selector(self.genderselect(_:)), for: .touchUpInside)
        view.addSubview(button_men)
        
        button_women.addTarget(self, action: #selector(self.genderselect(_:)), for: .touchUpInside)
        view.addSubview(button_women)
        backButton.addTarget(self, action: #selector(self.back(_:)), for: .touchUpInside)
        self.view.addSubview(backButton)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @objc func back(_ sender: UIButton) {// selectorで呼び出す場合Swift4からは「@objc」をつける。
        print("done")
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @objc func genderselect(_ sender: UIButton) {// selectorで呼び出す場合Swift4からは「@objc」をつける。
        let next2vc = MatchVC()
        next2vc.view.backgroundColor = UIColor.white
        self.present(next2vc, animated: true, completion: nil)
        
    }
    
    
}



