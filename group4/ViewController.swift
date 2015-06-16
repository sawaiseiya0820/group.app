//
//  ViewController.swift
//  group4
//
//  Created by 澤井聖也 on 2015/06/16.
//  Copyright (c) 2015年 澤井聖也. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Open: UIBarButtonItem!
    
    
    var varView = Int()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    Open.target = self.revealViewController()
    Open.action = Selector("revealToggle:")
    
    
    self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    
        
        if (varView == 0){
            
            
            Label.text = "Strings"
            
        } else{
            Label.text = "Others"
        }
        
        
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

