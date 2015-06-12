//
//  TestViewController.swift
//  TDWoXiu
//
//  Created by o2ounion on 15/6/11.
//  Copyright (c) 2015年 o2ounion. All rights reserved.
//

import UIKit

protocol FontSizeChangeDelegate:NSObjectProtocol {

    func fontSizeDidChange(controller:TestViewController ,fontSize:Int)
}

class TestViewController: BaseViewController {

    var fontSize:Int = 20
    
    var delegate:FontSizeChangeDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.redColor()
        
        let btn :UIButton = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 40))
        
        btn.setTitle("zitida", forState: UIControlState.Normal)
        
        btn.addTarget(self, action: "btnClick:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(btn)
        
    }
    
    func btnClick(sender:UIButton) {
        fontSize++
        println("++\(fontSize)")
//        if delegate {
            delegate?.fontSizeDidChange(self, fontSize: fontSize)
        
//        }
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
