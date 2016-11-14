//
//  XTPopViewSwift.swift
//  XTPopViewSwift
//
//  Created by summerxx on 2016/11/15.
//  Copyright © 2016年 summerxx. All rights reserved.
//

import UIKit
enum ArrowOfDirection {
    case XTUpCenter
}
class XTPopViewSwift: UIView {


    var bgView = UIView()
    var origin = CGPoint()
    var height = 0.0
    var width = 0.0
    var arrow = ArrowOfDirection.XTUpCenter
    // 初始化方法
    required init(origin: CGPoint, width: Double, height: Double) {
        super.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.height))
        self.backgroundColor = UIColor.clear
        self.origin = origin
        self.width = Double(width)
        self.height = Double(height)
        let x = Double(origin.x)
        let y = Double(origin.y)
        bgView = UIView.init(frame: CGRect.init(x: x, y: y, width: width, height: height))
        self.addSubview(self.bgView)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        
        let startX = self.origin.x
        let startY = self.origin.y
        
        context?.move(to: CGPoint.init(x: startX, y: startY))
        // 画出两条线
        context?.addLine(to: CGPoint.init(x: startX + 5.0, y: startY + 5.0))
        context?.addLine(to: CGPoint.init(x: startX - 5.0, y: startY + 5.0))
        
        context?.closePath()
        // 填充颜色
        self.bgView.backgroundColor?.setFill()
        self.backgroundColor?.setStroke()
        context?.drawPath(using: CGPathDrawingMode.fillStroke)
    }
    
    func popView()->Void{
        // 创建keyWindow
        let window = UIApplication.shared.keyWindow
        window?.addSubview(self)
        self.bgView.frame = CGRect.init(x: self.origin.x, y: self.origin.y + 5.0, width: 0, height: 0)
        // 类型CGFloat -> Double
        let originX = Double(self.origin.x) - self.width / 2
        let originY = Double(self.origin.y) + 5.0
        let width = self.width
        let height = self.height
        // 这里为什么抽出一个方法呢, 如果有很多类型箭头就方便很多, 可以看看OC版本
        self.updateFrame(x: originX, y: originY, width: width, height: height)
        
    }
    
    func updateFrame(x: Double, y: Double, width: Double, height: Double){
        self.bgView.frame = CGRect.init(x: x, y: y, width: width, height: height)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // 这里遍历包含UITouch的集合, 从中找到黑色View
        for touch: AnyObject in touches {
            let t:UITouch = touch as! UITouch
            if(!(t.view?.isEqual(self.bgView))!){
                self.dismiss()
            }
        }
    }
    
    func dismiss()->Void{
        let delay = DispatchTime.now() + DispatchTimeInterval.seconds(1)
        DispatchQueue.main.asyncAfter(deadline: delay) {
            // 延迟执行
            let res = self.subviews
            for view in res {
                view.removeFromSuperview()
            }
            self.removeFromSuperview()
        }
    }
}
