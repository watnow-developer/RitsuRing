//
//  matchOk.swift
//  matchingScreen
//
//  Created by yu on 2019/07/10.
//  Copyright © 2019 yu. All rights reserved.
//



import UIKit

class MatchVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let match_label = UILabel()
        let button = UIButton()
        
        
        
        
        //label
        match_label.text = "マッチしました"
        match_label.textColor = UIColor.white
        match_label.font = UIFont.systemFont(ofSize: 36)
        match_label.layer.borderColor = UIColor.white.cgColor
        match_label.layer.borderWidth = 2
        match_label.frame = CGRect(x:0, y:180,
                                   width:300, height:50)
        
        self.view.addSubview(match_label)
        
        // 中央寄せ
        match_label.textAlignment = .center
        match_label.center.x = self.view.center.x
        //ラベルバックグラウンドカラー
        
        match_label.backgroundColor = UIColor(red: 230/255, green: 124/255, blue: 115/255, alpha: 1)
        
        
        //start button
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
        button.layer.position = CGPoint(x: self.view.frame.width/2, y: 400)
        button.backgroundColor = UIColor(red: 230/255, green: 124/255, blue: 115/255, alpha: 1)
        button.setTitle("START", for: .normal)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button.layer.borderWidth = 1.0
        button.layer.cornerRadius = 25
        button.layer.borderColor = UIColor.clear.cgColor
        view.addSubview(button)
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
