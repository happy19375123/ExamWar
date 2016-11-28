//
//  EWTabBarController.swift
//  ExamWar
//
//  Created by Sseakom on 2016/11/9.
//  Copyright © 2016年 Sseakom. All rights reserved.
//

import UIKit

class EWTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadChildViewController()
        // Do any additional setup after loading the view.
    }

    fileprivate func loadChildViewController(){
        addChildVc("EWHomeViewController")
        addChildVc("EWFriendHomeViewController")
    }

    fileprivate func addChildVc(_ viewControllerName : String) {
        // 1.通过storyboard获取控制器
//        let childVc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()
        
        let classType = NSClassFromString("ExamWar." + viewControllerName) as? UIViewController.Type
        let childVc = classType?.init()
        childVc?.view.backgroundColor = UIColor.white
        let navVC = EWNavigationController(rootViewController:childVc!)
        // 2.将childVc作为子控制器
        addChildViewController(navVC)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
