//
//  ViewController.swift
//  XTPopViewSwift
//
//  Created by summerxx on 2016/11/15.
//  Copyright © 2016年 summerxx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var btn = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        btn = UIButton.init(type: UIButtonType.custom)
        btn.frame = CGRect.init(x: 0, y: 0, width: 88, height: 88)
        btn.center = self.view.center
        self.view.addSubview(btn)
        btn.backgroundColor = UIColor.cyan
        btn.addTarget(self, action: #selector(ViewController.btnClick), for: UIControlEvents.touchUpInside)
    }
    func btnClick(){
        let popView = XTPopViewSwift.init(origin: CGPoint.init(x: self.btn.center.x, y: self.btn.center.y), width: 100, height: 200)
        popView.bgView.backgroundColor = UIColor.black
        popView.popView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

