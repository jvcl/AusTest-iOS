//
//  Question.swift
//  AustralianCitizenshipTest
//
//  Created by Jorge on 1/04/2015.
//  Copyright (c) 2015 Innovus. All rights reserved.
//

//import Foundation

import UIKit

class Question {
    var question: String
    var answer1: String
    var answer2: String
    var answer3: String
    var choosen: Int = -1
    var rightAnswer: Int?
    
    
    init(question: String, answer1: String, answer2: String, answer3: String) {
        self.question = question
        self.answer1 = answer1
        self.answer2 = answer2
        self.answer3 = answer3
        self.rightAnswer = 0
        
        var n = Int(arc4random_uniform(3))
        if n == 0{
            self.rightAnswer = 0
        }else if n == 1{
            var temp = self.answer2
            self.answer2 = self.answer1
            self.answer1 = temp
            self.rightAnswer = 1
        }else if n == 2{
            var temp = self.answer3
            self.answer3 = self.answer1
            self.answer1 = temp
            self.rightAnswer = 2
        }
    }
}
