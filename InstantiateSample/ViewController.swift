//
//  ViewController.swift
//  InstantiateSample
//
//  Created by 住田祐樹 on 2017/10/13.
//  Copyright © 2017年 Yuki Sumida. All rights reserved.
//

import UIKit
import Instantiate
import InstantiateStandard

class ViewController: UIViewController, StoryboardInstantiatable {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapButton(_ sender: Any) {
        let label = "Hello world"
        let vc = ViewController2(with: label)
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func tapButton2(_ sender: Any) {
        let label = "Hello VC3"
        let vc = ViewController3(with: label)
        self.present(vc, animated: true, completion: nil)
    }
}

