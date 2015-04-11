//
//  ExampleCell.swift
//  RAMReel
//
//  Created by Mikhail Stepkin on 4/10/15.
//  Copyright (c) 2015 Ramotion. All rights reserved.
//

import UIKit

public protocol ConfigurableCell {
    
    typealias DataType
    
    func configureCell(data: DataType)
    
}

public class ExampleCell: UICollectionViewCell, ConfigurableCell {
    
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    var textLabel: UILabel!
    
    var theme = ExampleTheme.sharedTheme
    private func setup() {
        let labelFrame = CGRectInset(self.contentView.bounds, 10, 8)
        textLabel = UILabel(frame: labelFrame)
        
        textLabel.font = theme.font
        
        self.contentView.addSubview(textLabel)
    }
    
    public func configureCell(s: NSAttributedString) {
        
        self.textLabel.attributedText = s
    
    }
    
}