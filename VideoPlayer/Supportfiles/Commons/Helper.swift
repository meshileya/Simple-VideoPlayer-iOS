//
//  Helper.swift
//  VideoPlayer
//
//  Created by TECHIES on 3/10/19.
//  Copyright © 2019 TECHIES. All rights reserved.
//

import Foundation
import UIKit

class CustomNavigationController: UINavigationController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
}

class NavigationHelper {
    
    static func navigationController (_ vc: UIViewController) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: vc)
        if #available(iOS 11, *){
            navigationController.navigationBar.prefersLargeTitles = false
        }
        navigationController.navigationBar.tintColor = UIColor.green
        return navigationController;
    }
    
    static func transparentNavigationController (_ vc: UIViewController) -> UINavigationController {
        let navController = NavigationHelper.navigationController(vc)
        navController.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navController.navigationBar.shadowImage = UIImage()
        navController.navigationBar.isTranslucent = true
        return navController
    }
    
    static func performNavigation(_ vc : UIViewController) -> UIViewController {
        
        let navigationCon = NavigationHelper.navigationController(vc)
        return navigationCon
    }
}

class DynamicCollectionView: UICollectionView {
    override func layoutSubviews() {
        super.layoutSubviews()
        if bounds.size != intrinsicContentSize {
            invalidateIntrinsicContentSize()
        }
    }
    
    override var intrinsicContentSize : CGSize {
        let size = self.contentSize
        return size
    }
}
