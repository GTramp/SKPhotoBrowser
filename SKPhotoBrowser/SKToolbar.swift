//
//  SKToolbar.swift
//  SKPhotoBrowser
//
//  Created by keishi_suzuki on 2017/12/20.
//  Copyright © 2017年 suzuki_keishi. All rights reserved.
//

import Foundation

// helpers which often used
private let bundle = Bundle(for: SKPhotoBrowser.self)

class SKToolbar: UIToolbar {
    
    // MARK - 私有属性
    
    /// SKPhotoBrowser
    private weak var browser: SKPhotoBrowser!
    
    /// toolItem
    internal lazy var toolItem: UIBarButtonItem = {
        let _item = UIBarButtonItem(barButtonSystemItem: .action, target: browser, action: #selector(SKPhotoBrowser.actionButtonPressed))
        _item.tintColor = UIColor.white
        return _item
    }()
    
    /// originItem
    private lazy var originItem: UIBarButtonItem = {
        let _item = UIBarButtonItem.init(title: "原图", style: .plain, target: browser,  action: #selector(SKPhotoBrowser.displayOriginImageActionHandler(_:)))
        _item.tintColor = UIColor.white
        return _item
    }()
    
    /// 构建
    convenience init(frame: CGRect, browser: SKPhotoBrowser) {
        self.init(frame: frame)
        self.browser = browser
        // 初始化
        setupApperance()
        setupToolbar()
    }
    /// hitTest
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        if let view = super.hitTest(point, with: event) {
            if SKMesurement.screenWidth - point.x < 50.0 ||  point.x < 50.0 { // FIXME: not good idea
                return view
            }
        }
        return nil
    }
}

// MARK: - SKToolbar
extension SKToolbar {
    
    /// setupApperance
    private func setupApperance() {
        backgroundColor = .clear
        clipsToBounds = true
        isTranslucent = true
        setBackgroundImage(UIImage(), forToolbarPosition: .any, barMetrics: .default)
    }
    
    /// setupToolbar
    private func setupToolbar() {
        
        var items = [originItem]
        items.append(UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil))
        if SKPhotoBrowserOptions.displayAction {
            items.append(toolItem)
        }
        setItems(items, animated: false)
    }
    
    /// setupActionButton
    private func setupActionButton() {
        
    }
}

