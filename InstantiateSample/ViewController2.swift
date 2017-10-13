//
//  ViewController2.swift
//  InstantiateSample
//
//  Created by 住田祐樹 on 2017/10/13.
//  Copyright © 2017年 Yuki Sumida. All rights reserved.
//

import UIKit
import Instantiate
import InstantiateStandard

class ViewController2: UIViewController, StoryboardInstantiatable, ViewLoadBeforeInject {
    @IBOutlet weak var label: UILabel!
    static var storyboard: UIStoryboard = ViewController.storyboard
    static var instantiateSource: InstantiateSource { return .identifier(.from(ViewController2.self)) }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func inject(_ dependency: String) {
        self.label.text = dependency
    }
}
