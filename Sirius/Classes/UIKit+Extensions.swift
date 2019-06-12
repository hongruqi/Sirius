//
//  UIKit+Extensions.swift
//  Sirius
//
//  Created by hongru on 2019/6/12.
//

import Foundation

public extension UIImage{
    static func siriusImageName(_ name: String) -> UIImage {
        let bundle: Bundle = Bundle(for: NSClassFromString("SiriusWindow")!)
        let image: UIImage = UIImage.init(named: name, in: bundle, compatibleWith: nil)!
        return image
    }
}

public extension UIView{

    func siriusCenterX() -> CGFloat {
        return self.center.x
    }

    func siriusCenterY() -> CGFloat {
        return self.center.y
    }


}
