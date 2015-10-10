//
//  VisitorView.swift
//  HMWeibo
//
//  Created by 王方正 on 15/10/9.
//  Copyright © 2015年 王方正. All rights reserved.
//

import UIKit

class VisitorView: UIView {
    
    override init (frame: CGRect){
        
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        //      fatalError("init(coder:) has not been implemented")
        
        super.init(coder: aDecoder)
        setupUI()
    }
    
    private func setupUI(){
        addSubview(iconView)
        addSubview(homeIconView)
        addSubview(massageLable)
        addSubview(registerButton)
        addSubview(Login)
        
    }
    
    private lazy var iconView:UIImageView = {
        
        let iv = UIImageView(image: UIImage(named: "visitordiscover_feed_image_smallicon"))
        
        return iv
        }()
    
    private lazy var homeIconView:UIImageView = {
        let home = UIImageView(image: UIImage(named: "visitordiscover_feed_image_house"))
        return home
        }()
    
    private lazy var massageLable:UILabel = {
        
        let lable = UILabel()
        
        lable.text = "关注一些人,回这里来看看"
        lable.sizeToFit()
        
        return lable
        
        }()
    
    private lazy var registerButton:UIButton = {
        
        let btn = UIButton()
        
        btn.setTitle("注册",forState : UIControlState.Normal)
        btn.setBackgroundImage(UIImage(named: "common_button_white_disable"), forState: UIControlState.Normal)
        
        return btn
    }()
    
    private lazy var Login : UIButton = {
        
        let btn = UIButton()
        
        btn.setTitle("登陆", forState: UIControlState.Normal)
        btn.setBackgroundImage(UIImage(named: "common_button_white_disable"), forState: UIControlState.Normal)
        
        return btn
    }()
    
}
