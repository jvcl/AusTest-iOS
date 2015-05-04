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
    
    // Data with the videos urls
    let model = [
        ["tittle" : "1. Introduction", "url" : "https://www.youtube.com/watch?v=m2Lfg9ZIWGA"],
        ["tittle" : "2. Australia and its people", "url" : "https://www.youtube.com/watch?v=BkZdjRbTOO4"],
        ["tittle" : "3. Australia's democratic beliefs, rights and liberties", "url" : "https://www.youtube.com/watch?v=B-hdOsYBwao"],
        ["tittle" : "4. Australia's democratic beliefs, rights and liberties (Con)", "url": "https://www.youtube.com/watch?v=CzVuXALh9J4"],
        ["tittle" : "5. Goverment and the law in Australia", "url" : "https://www.youtube.com/watch?v=2bu3-vVqXns"],
        ["tittle" : "6. Goverment and the law in Australia (Con)", "url": "https://www.youtube.com/watch?v=Mk35dPXi30k"]
    ]
    
    //Number of rows
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.model.count;
        
    }
    //Cell at the specific row
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCellWithIdentifier(self.cellReuseIdentifier) as! UITableViewCell
        let dictionary = self.model[indexPath.row]
        cell.textLabel?.text = dictionary["tittle"]
        return cell
    }
    
    //Handle row selection and load video
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        let dictionary = self.model[indexPath.row]
        var url  = NSURL(string: dictionary["url"]!)
        if UIApplication.sharedApplication().canOpenURL(url!) == true  {
            UIApplication.sharedApplication().openURL(url!)
        }
    }
}
