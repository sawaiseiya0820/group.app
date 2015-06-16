//
//  BackTableVC.swift
//  group4
//
//  Created by 澤井聖也 on 2015/06/17.
//  Copyright (c) 2015年 澤井聖也. All rights reserved.
//

import Foundation

class BackTabbleVC: UITableViewController {
    
    
    
    
        var TableArray = [String]()
    
    
    override func viewDidLoad() {
        
    
    
    TableArray = ["Hello","Second","World"]

    
    
    }


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableArray.count
    }
    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(TableArray[indexPath.row], forIndexPath: indexPath) as! UITableViewCell
   
        
        
        cell.textLabel?.text = TableArray[indexPath.row]
        
        
        
      return cell
    
    }
    

    
    
}