//
//  ViewController3.swift
//  InstantiateSample
//
//  Created by 住田祐樹 on 2017/10/18.
//  Copyright © 2017年 Yuki Sumida. All rights reserved.
//

import UIKit
import Instantiate
import InstantiateStandard

class ViewController3: UIViewController, StoryboardInstantiatable {
    @IBOutlet weak var label: UILabel!
    static var storyboard: UIStoryboard = ViewController.storyboard
    static var instantiateSource: InstantiateSource { return .identifier(.from(ViewController3.self)) }

    private var dependency: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        // viewDidLoad以降にviewにアクセスする分にはViewLoadBeforeInjectは適用不要
        self.label.text = dependency
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func inject(_ dependency: String) {
        self.dependency = dependency
    }
}

