//
//  CLTextView.swift
//  PlaceholderTextView
//
//  Created by chocklee on 16/9/19.
//  Copyright © 2016年 北京超信. All rights reserved.
//

import UIKit

class CLTextView: UITextView {
    
    // placeholder
    var placeholder: String = "" {
        didSet {
            placeholderLabel.text = placeholder
        }
    }
    
    // placeholder color
    var placeholderColor: UIColor = UIColor.lightGrayColor() {
        didSet {
            placeholderLabel.textColor = placeholderColor
        }
    }
    
    // placeholder font
    var placeholderFont: UIFont! {
        didSet {
            placeholderLabel.font = placeholderFont
        }
    }
    
    // placeholder Label
    private var placeholderLabel: UILabel!
    
    override var text: String! {
        didSet {
            textDidChange()
        }
    }
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer);
        createPlaceholderLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        createPlaceholderLabel()
    }
    
    func createPlaceholderLabel() {
        placeholderLabel = UILabel(frame: CGRectMake(6, 0, 100, 35))
        placeholderLabel.text = placeholder
        placeholderLabel.textColor = placeholderColor
        placeholderLabel.font = UIFont.systemFontOfSize(15.0)
        placeholderLabel.textAlignment = .Left
        placeholderLabel.numberOfLines = 0
        placeholderLabel.backgroundColor = UIColor.clearColor()
        addSubview(placeholderLabel)
        
        // 添加通知
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(CLTextView.textDidChange), name: UITextViewTextDidChangeNotification, object: nil)
    }
    
    func textDidChange() {
        placeholderLabel.hidden = !text.isEmpty
    }
}
