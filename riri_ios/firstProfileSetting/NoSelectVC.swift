//
//  noselectedview.swift
//  add2_riri
//
//  Created by 瀧頭　直斗 on 2019/07/14.
//  Copyright © 2019 瀧頭　直斗. All rights reserved.
//

import UIKit

class noselectedview:UIViewController{
    
    let nolabel: UILabel = {
        let view = UILabel()
        view.frame.size = CGSize(width: 300, height: 50)
        view.center = CGPoint(x: 200, y: 200)
        view.textAlignment = .center
        view.text = "フレンド不成立"
        return view
    }()
    
    let returnbutton:UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 230/255, green: 124/255, blue: 115/255, alpha: 1)
        button.setTitle("もう一度マッチする", for: .normal)
        button.center = CGPoint(x: 70, y: 500)
        button.frame.size = CGSize(width: 300, height: 100)
        button.layer.cornerRadius = 20
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nolabel.font = .systemFont(ofSize: 30)
        nolabel.center.x = self.view.center.x
        view.addSubview(nolabel)
        
        returnbutton.center = self.view.center
        view.addSubview(returnbutton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
