//
//  ViewController.swift
//  Neumorphic
//
//  Created by SomuYadav on 07/30/2020.
//  Copyright (c) 2020 SomuYadav. All rights reserved.
//

import UIKit
import Neumorphic

class ViewController: UIViewController {

    @IBOutlet weak var btnCircle: SYNeumorphicButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnCircle.layer.cornerRadius = self.btnCircle.frame.height/2
        UIView.animate(withDuration: 2.0, delay: 0.4, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.2, options: [], animations: {
            self.btnCircle.center.y -= 80
        }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

