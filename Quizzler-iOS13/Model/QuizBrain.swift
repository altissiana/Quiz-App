//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Tissiana Alves on 6/5/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "A byte has 8 bits", a: "True"),
        Question(q: "The process of starting or restarting a computer is called 'Booting", a: "True"),
        Question(q: "CPU means Crucial Processing Unit", a: "False"),
        Question(q: "Processor is a component of the Mobo", a: "True"),
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(answer userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
           return score
       }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }

}
