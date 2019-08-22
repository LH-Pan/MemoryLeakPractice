//
//  SomeView.swift
//  MemoryLeakPractice
//
//  Created by 潘立祥 on 2019/8/21.
//  Copyright © 2019 PanLiHsiang. All rights reserved.
//

import UIKit

//protocol PassColorDelegate: AnyObject {
//
//    func passColor(didGet color: UIColor)
//}

class SomeView: UIView {
    
    var myBackgroundColor: UIColor = .brown
    
    var passColor: ((UIColor) -> ())! {
        
        didSet {
            passColor(myBackgroundColor)
        }
    }
    
//    weak var delegate: PassColorDelegate?
    
//    func setupColor() {
    
//         let myBackgroundColor: UIColor = .orange
        
//        delegate?.passColor(didGet: myBackgroundColor)
        
//    }
    
    deinit {
        print("SomeView 表示：屎掉惹")
    }
}
