//
//  LiSSpBArBootomrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit


class LiSSpBArBootomrbucue:UITabBarController {
   
    override func viewDidLoad() {
     
        super.viewDidLoad()
        let appearenceLIpad = UITabBarAppearance()
        
        appearenceLIpad.backgroundColor = UIColor(red: 0.06, green: 0.05, blue: 0.13, alpha: 1)
        appearenceLIpad.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor:  UIColor(red: 0.36, green: 0.18, blue: 0.32, alpha: 1)
        ]
        appearenceLIpad.stackedLayoutAppearance.selected.titleTextAttributes = [
            .foregroundColor:UIColor(red: 0.92, green: 0.16, blue: 0.75, alpha: 1)
        ]
        tabBar.standardAppearance = appearenceLIpad
        tabBar.scrollEdgeAppearance = appearenceLIpad
        
        
        
        let firstViewController = LiSSpNavitSnmingertips.init(rootViewController: LiSSpHomeBootomrbucue())
//
        let secondViewController = LiSSpNavitSnmingertips.init(rootViewController: LiSSpDynamicBootomrbucue())
        let thirdViewController = LiSSpNavitSnmingertips.init(rootViewController: LiSSpMeaddgeBootomrbucue())
 
         
        let items = [
           
            UITabBarItem.init(title: "HOME", image: UIImage(named: "LiSSphome_black"), selectedImage: UIImage(named: "LiSSphome_pink")!.withRenderingMode(.alwaysOriginal)),
            UITabBarItem.init(title: "POST", image: UIImage(named: "LiSSp_posBar_black"), selectedImage: UIImage(named: "LiSSp_posBar_pink")!.withRenderingMode(.alwaysOriginal)),
            UITabBarItem.init(title: "MESSAGE", image: UIImage(named: "LiSSMeag_black"), selectedImage: UIImage(named: "LiSSMeag_pink")!.withRenderingMode(.alwaysOriginal))
            
        ]
        
        firstViewController.tabBarItem = items[0]
        secondViewController.tabBarItem = items[1]
        thirdViewController.tabBarItem = items[2]
       
        self.tabBar.backgroundColor = UIColor(red: 0.06, green: 0.05, blue: 0.13, alpha: 1)
          
        viewControllers = [firstViewController, secondViewController,thirdViewController]
    }
    
   
   
}




class LiSSpNavitSnmingertips: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.navigationBar.isHidden = true
    }
    

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
      
        if children.count > 0  && !viewController.isMember(of:LiSSpNOrmalSnmingertips.self) {
           
            viewController.hidesBottomBarWhenPushed = true
        }
       
        super.pushViewController(viewController, animated: false)
    }
}


class LiSSpNOrmalSnmingertips: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1)
    }
}
