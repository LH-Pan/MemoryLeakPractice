//
//  SecondViewController.swift
//  MemoryLeakPractice
//
//  Created by 潘立祥 on 2019/8/21.
//  Copyright © 2019 PanLiHsiang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, PassColorDelegate {
    
    var myView: UIView = UIView()
    
    let someView = SomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myView)
        
        setupView()
        
        someView.delegate = self
        
        someView.setupColor()

    }
    
     func setupView() {
    
        myView.frame = CGRect(x: 100, y: 200, width: 50, height: 50)
        
        myView.backgroundColor = .gray
    
    }
    
    func passColor(didGet color: UIColor) {
       myView.backgroundColor = color
    }
}
