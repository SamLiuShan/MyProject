//
//  ChatViewController.swift
//  TDWoXiu
//
//  Created by o2ounion on 15/6/11.
//  Copyright (c) 2015年 o2ounion. All rights reserved.
//

import UIKit

class ChatViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.redColor()
//        test()
    }
    
    
    func test(){
        println("===")
        var p1 = 100;
        let p2 = "value is"+String(p1)
        
        var p3 = ["iOS","andriod","Symbian"]
        println("\(p3)")
        
        for i in p3 {
            println("\(i)")
        }
        p3[0] = "Swift"
        println("new = \(p3)")
        
        p3.append("blackBerry")
        
        for i in p3 {
            println("**\(i)")
        }
        
        
        var p4:Dictionary = ["name":"xiaoming","score":"88","age":"18"]
        for (key,value) in p4 {
            println("\(key) =\(value)")
        }
        
        //给字典追加内容
        p4["course"] = "iOS"
        for (key,value) in p4 {
            println("key value \(key) =\(value)")
        }
        let p5 = p4.keys
        for key in p5 {
            println("haha = \(key)")
            let p6 = p4[key]
            println("hehe = \(p6)")
        }
        
        var p7 = [
        "iOS":[100,23,233],
        "Andriod":[23,34,45],
        "WindowPhone":[22,44,99]
        ]
        
        var sum :Int = 0;
        for (key,value) in p7 {
            for i in value {
                sum += i
            }
        }
        
       println("\(sum)")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
