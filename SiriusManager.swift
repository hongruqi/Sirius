//
//  SiriusManager.swift
//  Sirius
//
//  Created by hongru on 2019/6/12.
//

import Foundation

class SiriusManager{

    private static let shareInstance: SiriusManager = {
        let instance = SiriusManager()
        return instance
    }()

    let siriusWindow: SiriusWindow

    private init() {
        self.siriusWindow = SiriusWindow(coder: <#NSCoder#>)
    }

    class func instance() -> SiriusManager {
        return shareInstance;
    }
}


