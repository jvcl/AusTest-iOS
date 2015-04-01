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
    let a1Gesture = UITapGestureRecognizer();
    let a2Gesture = UITapGestureRecognizer();
    let a3Gesture = UITapGestureRecognizer();
    
    @IBOutlet weak var buttonNext: UIBarButtonItem!
    @IBOutlet weak var buttonPrev: UIBarButtonItem!
    @IBOutlet weak var label_question: UILabel!
    @IBOutlet weak var a1: UILabel!
    @IBOutlet weak var a2: UILabel!
    @IBOutlet weak var a3: UILabel!
    var questions: [Question] = []
    
    
    var num = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        a1Gesture.addTarget(self, action: "tappedView1")
        a2Gesture.addTarget(self, action: "tappedView2")
        a3Gesture.addTarget(self, action: "tappedView3")
        
        a1.addGestureRecognizer(a1Gesture)
        a1.userInteractionEnabled = true
        
        a2.addGestureRecognizer(a2Gesture)
        a2.userInteractionEnabled = true
        a3.addGestureRecognizer(a3Gesture)
        a3.userInteractionEnabled = true
        
        getQuestions()
        loadQuestion(0)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button_prev(sender: AnyObject) {
        if (num > 0) {
            num--
            buttonNext.enabled = true
            
        }
        if num == 0 {
            buttonPrev.enabled = false
        }
        
        label.text = "Question \(num+1)"
        loadQuestion(num)
    }
    
    @IBAction func button_finish(sender: AnyObject) {
        println("finish")
        
        let alertController = UIAlertController(title: nil, message: "Finish?", preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            // ...
        }
        alertController.addAction(cancelAction)
        
        let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
            // ...
            
            
            
        }
        alertController.addAction(OKAction)
        
        
        
        self.presentViewController(alertController, animated: true) {
            // ...
        }
        
    }
   
    @IBAction func button_next(sender: AnyObject) {
        if (num < 19) {
            num++
            buttonPrev.enabled = true
            
        }
        if num == 19 {
            buttonNext.enabled = false
        }
        
        
        label.text = "Question \(num+1)"
        loadQuestion(num)
    }
    
    func getQuestions(){
        for var index = 0; index < 20; ++index {
            var q = Question(question: "Hola \(index)", answer1: "a1 \(index)", answer2: "a2 \(index)", answer3: "a3 \(index)")
            questions.append(q)
        }
    }
    
    func tappedView1 (){
        questions[num].choosen = 0
        changeLabelColor(a1)
        
        //UIApplication.sharedApplication().openURL(NSURL(string: "http://www.apple.com/")!)
    }
    
    func loadQuestion(index: Int) {
        
        resetLabels()
        
        label_question.text = questions[index].question
        a1.text = questions[index].answer1
        a2.text = questions[index].answer2
        a3.text = questions[index].answer3
        var tempLabel: UILabel?
        if questions[index].choosen > -1 {
            if questions[index].choosen == 0{
                tempLabel = a1
            }
            if questions[index].choosen == 1{
                tempLabel = a2
            }
            if questions[index].choosen == 2{
                tempLabel = a3
            }
            changeLabelColor(tempLabel!)
        }
    }
    
    func tappedView2 (){
        questions[num].choosen = 1
        changeLabelColor(a2)
    }
    func tappedView3 (){
        questions[num].choosen = 2
        changeLabelColor(a3)
    }
    func resetLabels(){
        a1.backgroundColor = UIColor(red: 1, green: 128/255.0, blue: 0.5, alpha: 0)
        a2.backgroundColor = UIColor(red: 1, green: 128/255.0, blue: 0.5, alpha: 0)
        a3.backgroundColor = UIColor(red: 1, green: 128/255.0, blue: 0.5, alpha: 0)
    }
    
    func changeLabelColor(label: UILabel){
        resetLabels()
        label.backgroundColor = UIColor(red: 1, green: 128/255.0, blue: 0.5, alpha: 1.0)
    }
}

