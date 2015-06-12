//
//  AppDelegate.swift
//  TDWoXiu
//
//  Created by o2ounion on 15/6/11.
//  Copyright (c) 2015年 o2ounion. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        let vc1 :UIViewController = LiveViewController()
        let nav1 :UINavigationController = UINavigationController(rootViewController: vc1)
        
        let image1 = UIImage(named: "tab_bar_recommend_normal")
        let image1Sel = UIImage(named: "tab_bar_recommend_actived")
        nav1.tabBarItem = UITabBarItem(title: "直播", image: image1, selectedImage: image1Sel)
        
        let vc2 :UIViewController = PrivatePhotosViewController()
        let nav2 :UINavigationController = UINavigationController(rootViewController: vc2)
        let image2 = UIImage(named: "tab_bar_dynamic_normal")
        let image2Sel = UIImage(named: "tab_bar_dynamic_actived")
        nav2.tabBarItem = UITabBarItem(title: "私房照", image: image2, selectedImage: image2Sel)
        
        let vc3 :UIViewController = ChatViewController()
        let nav3 :UINavigationController = UINavigationController(rootViewController: vc3)
        let image3 = UIImage(named: "tab_bar_star_normal")
        let image3Sel = UIImage(named: "tab_bar_star_actived")
        
        nav3.tabBarItem = UITabBarItem(title: "聊天", image: image3, selectedImage: image3Sel)
        
        let vc4 :UIViewController = MineViewController()
        let nav4 :UINavigationController = UINavigationController(rootViewController: vc4)
        let image4 = UIImage(named: "tab_bar_mine_normal")
        let image4Sel = UIImage(named: "tab_bar_mine_actived")
        
        nav4.tabBarItem = UITabBarItem(title: "我的", image: image4, selectedImage: image4Sel)

        
        let arr = [nav1,nav2,nav3,nav4]
        
        let tabBar = UITabBarController()
        tabBar.tabBar.tintColor = UIColor(red: 236/255, green: 3/255, blue: 104/255, alpha: 1)
        
        tabBar.viewControllers = arr
        
        self.window!.rootViewController = tabBar;

        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

