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

    func inject(_ dependency: String) {
        self.label.text = dependency
    }
}
