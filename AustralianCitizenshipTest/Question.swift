//
//  Question.swift
//  AustralianCitizenshipTest
//
//  Created by Jorge on 1/04/2015.
//  Copyright (c) 2015 Innovus. All rights reserved.
//

//import Foundation

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
    }
}
