//
//  ViewController.swift
//  MemoryLeakPractice
//
//  Created by 潘立祥 on 2019/8/21.
//  Copyright © 2019 PanLiHsiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let secondVC = SecondViewController()
    
    @IBOutlet weak var fisetViewLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondVC.delegate = self
        
    }
    @IBAction func nextPage(_ sender: Any) {
    }
    
    @IBAction func testLeak(_ sender: Any) {
    }
    
}

extension ViewController: PassTextDelegate {
    
    func passText(with text: String) {
        
        fisetViewLabel.text = text
    }
}
