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
        ["text" : "1. Introduction", "detail" : "https://www.youtube.com/watch?v=m2Lfg9ZIWGA"],
        ["text" : "2. Australia and its people", "detail" : "https://www.youtube.com/watch?v=BkZdjRbTOO4"],
        ["text" : "3. Australia's democratic beliefs, rights and liberties", "detail" : "https://www.youtube.com/watch?v=B-hdOsYBwao"],
        ["text" : "4. Australia's democratic beliefs, rights and liberties (Con)", "detail": "https://www.youtube.com/watch?v=CzVuXALh9J4"],
        ["text" : "5. Goverment and the law in Australia", "detail" : "https://www.youtube.com/watch?v=2bu3-vVqXns"],
        ["text" : "6. Goverment and the law in Australia (Con)", "detail": "https://www.youtube.com/watch?v=Mk35dPXi30k"]
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
        let dictionary = self.model[indexPath.row]
        var url  = NSURL(string: dictionary["detail"]!)
        if UIApplication.sharedApplication().canOpenURL(url!) == true  {
            UIApplication.sharedApplication().openURL(url!)
        }
    }
}
