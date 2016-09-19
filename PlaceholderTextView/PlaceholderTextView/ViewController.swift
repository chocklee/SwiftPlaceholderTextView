//
//  ViewController.swift
//  PlaceholderTextView
//
//  Created by chocklee on 16/9/19.
//  Copyright © 2016年 北京超信. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let textView: CLTextView = CLTextView(frame: CGRectMake(50, 100, 300, 35))
        textView.placeholder = "输入消息..."
        textView.font = UIFont.systemFontOfSize(16.0)
        textView.layer.borderWidth = 0.5
        textView.layer.borderColor = UIColor.blackColor().CGColor
        textView.layer.masksToBounds = true
        view.addSubview(textView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

