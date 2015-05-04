//
//  VideosViewController.swift
//  AustralianCitizenshipTest
//
//  Created by Jorge on 4/05/2015.
//  Copyright (c) 2015 Innovus. All rights reserved.
//

import UIKit

class VideosViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // Use this string property as your reuse identifier,
    // Storyboard has been set up for you using this String.
    let cellReuseIdentifier = "MyCellReuseIdentifier"
    
    // Choose some data to show in your table
    
    let model = [
        ["text" : "1. Introduction", "detail" : "A deer. A female deer."],
        ["text" : "2. Australia and its people", "detail" : "A drop of golden sun."],
        ["text" : "3. Australia's democratic beliefs, rights and liberties", "detail" : "A name, I call myself."],
        ["text" : "4. Australia's democratic beliefs, rights and liberties (Con)", "detail" : "A long long way to run."],
        ["text" : "5. Goverment and the law in Australia", "detail" : "A needle pulling thread."],
        ["text" : "6. Goverment and the law in Australia (Con)", "detail": "A note to follow So."]
    ]
    
    override func viewDidLoad() {
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.model.count;
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCellWithIdentifier(self.cellReuseIdentifier) as! UITableViewCell
        
        let dictionary = self.model[indexPath.row]
        
        cell.textLabel?.text = dictionary["text"]
        cell.detailTextLabel?.text = dictionary["detail"]
        
        return cell
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        println(indexPath.row)
    }
}
