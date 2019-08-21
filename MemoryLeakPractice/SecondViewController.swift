//
//  SecondViewController.swift
//  MemoryLeakPractice
//
//  Created by 潘立祥 on 2019/8/21.
//  Copyright © 2019 PanLiHsiang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var secondViewLabel: UILabel!
    
    weak var delegate: PassTextDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabelText(text: "傳過去～")
    }
    
    func setupLabelText(text: String) {
        
        secondViewLabel.text = text
        
        delegate?.passText(with: text)
        
    }
}

protocol PassTextDelegate: AnyObject {
    
    func passText(with text: String)
}
