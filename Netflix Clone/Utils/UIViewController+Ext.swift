//
//  UIViewController+Ext.swift
//  Netflix Clone
//
//  Created by Albany Buipe on 17/06/2023.
//

import UIKit

extension UIViewController {
    func configureTabBar(image: String, title: String, scale: UIImage.SymbolScale) {
        let image = UIImage(systemName: image, withConfiguration: UIImage.SymbolConfiguration(scale: scale))
        tabBarItem.image = image
        tabBarItem.title = title
    }
}
