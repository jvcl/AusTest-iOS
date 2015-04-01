//
//  ViewController.swift
//  AustralianCitizenshipTest
//
//  Created by Jorge on 1/04/2015.
//  Copyright (c) 2015 Innovus. All rights reserved.
//

import UIKit

class QuestionsController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    let tapRec = UITapGestureRecognizer();
    
    @IBOutlet weak var label_question: UILabel!
    @IBOutlet weak var a1: UILabel!
    @IBOutlet weak var a2: UILabel!
    @IBOutlet weak var a3: UILabel!
    
    var num = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tapRec.addTarget(self, action: "tappedView")
        a1.addGestureRecognizer(tapRec)
        a1.userInteractionEnabled = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button_prev(sender: AnyObject) {
        if (num > 0) {
            num--
            
        }
        label.text = "Question \(num+1)"
    }
    
    @IBAction func button_next(sender: AnyObject) {
        if (num < 19) {
            num++
            
        }
        label.text = "Question \(num+1)"
    }
    
    func tappedView (){
        println("Touch")
        label.text = "Done"
        a1.backgroundColor = UIColor(red: 1, green: 128/255.0, blue: 0.5, alpha: 1.0)
        
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.apple.com/")!)
    }
    
       
}

