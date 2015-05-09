//
//  ScoreViewController.swift
//  AustralianCitizenshipTest
//
//  Created by Jorge on 5/05/2015.
//  Copyright (c) 2015 Innovus. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {
    
    @IBOutlet weak var porcentLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    var score = 0
    
    override func viewDidLoad() {
        //println("Load from Score")
    }
    override func viewWillAppear(animated: Bool) {
        var porcent = (Double(score)/20.0) * 100.0
        porcentLabel.text = "\(Int(porcent)) %"
        scoreLabel.text = "Score: \(score)"
    }
    
    @IBAction func goBackButton(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
