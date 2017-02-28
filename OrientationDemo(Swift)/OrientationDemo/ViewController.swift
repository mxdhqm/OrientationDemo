//
//  ViewController.swift
//  OrientationDemo
//
//  Created by metthew on 2017/2/28.
//  Copyright © 2017年 metthew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton()
        btn.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        btn.backgroundColor = UIColor.red
        btn.addTarget(self, action: #selector(btnClick(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func btnClick(_ btn:UIButton) {
        self.present(testViewController(), animated: true) { 
            
        }
    }
}

