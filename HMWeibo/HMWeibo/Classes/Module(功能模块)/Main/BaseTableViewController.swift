//
//  BaseTableViewController.swift
//  HMWeibo
//
//  Created by 王方正 on 15/10/9.
//  Copyright © 2015年 王方正. All rights reserved.
//

import UIKit

class BaseTableViewController: UITableViewController {
    
    var userLogon = false
    
    override func loadView() {
        userLogon ? super.loadView() : setupVisitorView()
    }
    private func setupVisitorView(){
        
        view = VisitorView()
        

    
    }
       }
