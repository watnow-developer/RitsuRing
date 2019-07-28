//
//  NextViewController.swift
//  riri
//
//  Created by 瀧頭　直斗 on 2019/07/07.
//  Copyright © 2019 瀧頭　直斗. All rights reserved.
//

import UIKit

class PassCodeVC: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton()
        
        let Label = UILabel(frame: CGRect(x: 10, y: 180, width: 200, height:50 ))
        Label.textAlignment = .center
        Label.center.x = self.view.center.x
        Label.backgroundColor = .white
        Label.font = .systemFont(ofSize: 25)
        Label.text = "確認しました"
        self.view.addSubview(Label)
        
        //next button
        
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
        button.layer.position = CGPoint(x: self.view.frame.width/2, y: 400)
        button.backgroundColor = UIColor(red: 230/255, green: 124/255, blue: 115/255, alpha: 1)
        button.setTitle("NEXT", for: .normal)
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
