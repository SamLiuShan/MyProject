//
//  LiveViewController.swift
//  TDWoXiu
//
//  Created by o2ounion on 15/6/11.
//  Copyright (c) 2015年 o2ounion. All rights reserved.
//

import UIKit

class LiveViewController: BaseViewController ,FontSizeChangeDelegate{

    var myLabel :UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.orangeColor()
        
        self.title = "直播"
        
        var button :UIButton = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 40))
        button.setTitle("下一页", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonClick:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(button)
        
        myLabel = UILabel(frame: CGRect(x: 100, y: 200, width: 100, height: 40))
        myLabel.text = "你好啊"
        self.view?.addSubview(myLabel)
        
    }
    
    
    
    func buttonClick(sender:UIButton) {
        let tvc = TestViewController()
        tvc.delegate = self;
        
        self.navigationController?.pushViewController(tvc, animated: true)
        
    }
    func fontSizeDidChange(controller:TestViewController ,fontSize:Int)
    {
        println("****\(fontSize)")
        
        let size:Float = Float(fontSize)
        
//        myLabel.font = UIFont.systemFontOfSize(<#fontSize: CGFloat#>)
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
