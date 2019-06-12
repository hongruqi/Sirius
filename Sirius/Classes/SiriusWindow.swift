//
//  SiriusWindow.swift
//  Sirius
//
//  Created by hongru on 2019/6/12.
//

import UIKit


class SiriusWindow: UIWindow {

    override init(frame: CGRect) {
        self.backgroundColor = UIColor.clear
        self.windowLevel = UIWindowLevelStatusBar + 100.0
        self.layer.masksToBounds = true
        let btn: UIButton = UIButton.init(frame: self.bounds)
        btn.setImage(UIImage.siriusImageName("srius_logo"), for:UIControlState.normal)
        btn.layer.cornerRadius = 20.0
        btn.addTarget(self, action: #selector(openSirius), for: UIControlEvents.touchUpInside)

        self.rootViewController?.view.addSubview(btn)
        let pan: UIPanGestureRecognizer = UIPanGestureRecognizer.init(target: self, action: #selector(pan(sender:)))
        self.addGestureRecognizer(pan)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc func openSirius()  {

    }

    @objc func pan(sender: UIPanGestureRecognizer) {
        let offsetPoint: CGPoint = sender.translation(in: sender.view)
        sender.setTranslation(CGPoint.zero, in: sender.view)
        let panView: UIView = sender.view!

        CGFloat newX = panView.
    }

}
