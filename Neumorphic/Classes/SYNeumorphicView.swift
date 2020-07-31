//
//  SYNeumorphicView.swift
//  SYNeumorphicView
//
//  Created by Somendra Yadav on 2020/07/20.
//  Copyright © 2020 SomendraYadav. All rights reserved.
//

import UIKit

/**
 `SYNeumorphicView` is a subclass of UIView and it provides some Neumorphism style design.
 Access neumorphicLayer. Change effects via its properties.
 */
@available(iOS 11.0,*)
public class SYNeumorphicView: UIView, SYNeumorphicElementProtocol {
    /// Change effects via its properties.
    public var neumorphicLayer: SYNeumorphicLayer? {
        return layer as? SYNeumorphicLayer
    }
    public override class var layerClass: AnyClass {
        return SYNeumorphicLayer.self
    }
    public override func layoutSubviews() {
        super.layoutSubviews()
        neumorphicLayer?.update()
    }
}

/**
 `SYNeumorphicButton` is a subclass of UIView and it provides some Neumorphism style design.
 Access neumorphicLayer. Change effects via its properties.
 */
@available(iOS 11.0,*)
@IBDesignable public class SYNeumorphicButton: UIButton, SYNeumorphicElementProtocol {
    /// Change effects via its properties.
    public var neumorphicLayer: SYNeumorphicLayer? {
        return layer as? SYNeumorphicLayer
    }
    public override class var layerClass: AnyClass {
        return SYNeumorphicLayer.self
    }
    public override func layoutSubviews() {
        super.layoutSubviews()
        neumorphicLayer?.update()
    }
    public override var isHighlighted: Bool {
        didSet {
            if oldValue != isHighlighted {
                neumorphicLayer?.selected = isHighlighted
            }
        }
    }
    
    public override var isSelected: Bool {
        didSet {
            if oldValue != isSelected {
                neumorphicLayer?.depthType = isSelected ? .concave : .convex
            }
        }
    }
}

/**
 `SYNeumorphicTableCell` is a subclass of UITableViewCell and it provides some Neumorphism style design.
 Access neumorphicLayer. Change effects via its properties.
 */
@available(iOS 11.0,*)
public class SYNeumorphicTableCell: UITableViewCell, SYNeumorphicElementProtocol {

    override public init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = UIColor.clear
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /// Change effects via its properties.
    public var neumorphicLayer: SYNeumorphicLayer? {
        if bg == nil {
            bg = SYNeumorphicView(frame: bounds)
            bg?.neumorphicLayer?.masterView = self
            selectedBackgroundView = UIView()
            layer.masksToBounds = true
            backgroundView = bg
        }
        return bg?.neumorphicLayer
    }
    private var bg: SYNeumorphicView?
    public override func layoutSubviews() {
        super.layoutSubviews()
        neumorphicLayer?.update()
    }
    public override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
        neumorphicLayer?.selected = highlighted
    }
    public override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        neumorphicLayer?.selected = selected
    }
    public func depthTypeUpdated(to type: SYNeumorphicLayerDepthType) {
        if let l = bg?.neumorphicLayer {
            layer.masksToBounds = l.depthType == .concave
        }
    }
}
