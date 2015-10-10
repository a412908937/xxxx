//
//  MainViewController.swift
//  HMWeibo
//
//  Created by 王方正 on 15/10/8.
//  Copyright © 2015年 王方正. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildViewControllers()
        // 此时 tabBarButton 还没有创建
        print(tabBar.subviews)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
       // tabBar.addSubview(composeButton)
        // 此时 tabBarButton 都已经创建
        setupComposedButton()
    }

    func clickComposedButton(){
        print(__FUNCTION__)
    }
    
    private func setupComposedButton(){
        let w = tabBar.bounds.width/CGFloat(viewControllers!.count)
        
        let rect = CGRect(x: 0, y: 0, width: w, height: tabBar.bounds.height)
        composeButton.frame = CGRectOffset(rect, 2 * w, 0)
        
    }
    
    
    private func addChildViewControllers() {
        addChildViewController(HomeTableViewController(),title:"首页",imageName:"tabbar_home")
        addChildViewController(MessageTableViewController(),title:"消息",imageName:"tabbar_message_center")
        addChildViewController(UIViewController())
        addChildViewController(DiscoverTableViewController(),title:"发现",imageName:"tabbar_discover")
        addChildViewController(ProfileTableViewController(),title:"我",imageName:"tabbar_profile")
    }

    private func addChildViewController(vc : UIViewController,title : String,imageName : String){
        
        
        tabBar.tintColor = UIColor.orangeColor()

        
        vc.title = title
        vc.tabBarItem.image = UIImage(named: imageName)
        let nav = UINavigationController(rootViewController: vc)
        addChildViewController(nav)
        
        
    }
    lazy private var composeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "tabbar_compose_icon_add"), forState: UIControlState.Normal)
        button.setImage(UIImage(named: "tabbar_compose_icon_add_highlighted"), forState: UIControlState.Highlighted)
        button.setBackgroundImage(UIImage(named: "tabbar_compose_button"), forState: UIControlState.Normal)
        button.setBackgroundImage(UIImage(named: "tabbar_compose_button_highlighted"), forState: UIControlState.Highlighted)
        
        self.tabBar.addSubview(button)
        button.addTarget(self, action: "clickComposedButton", forControlEvents: UIControlEvents.TouchUpInside)
        
        return button
    }()
    
    
    }

