//
//  testViewController.swift
//  OrientationDemo
//
//  Created by metthew on 2017/2/28.
//  Copyright © 2017年 metthew. All rights reserved.
//

import UIKit

class testViewController: UIViewController {

    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        appDelegate.isRotation = true

        let btn = UIButton()
        btn.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        btn.backgroundColor = UIColor.red
        btn.addTarget(self, action: #selector(btnClick(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func btnClick(_ btn:UIButton) {
        appDelegate.isRotation = false
        let value = UIInterfaceOrientation.portrait.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
        
        dismiss(animated: true) {}
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let value = UIInterfaceOrientation.landscapeRight.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
//        appDelegate.isRotation = false
//        let value = UIInterfaceOrientation.portrait.rawValue
//        UIDevice.current.setValue(value, forKey: "orientation")
    }
    
    override var shouldAutorotate: Bool{
        return false
    }


}
