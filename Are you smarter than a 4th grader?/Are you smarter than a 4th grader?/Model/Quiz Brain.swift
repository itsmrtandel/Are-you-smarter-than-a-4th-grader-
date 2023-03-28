//
//  Quiz Brain.swift
//  Are you smarter than a 4th grader?
//
//  Created by Amit Tandel on 3/27/23.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "The Atlantic Ocean is the largest ocean on the planet.", a: "False"),
        Question(q: "Sharks are mammals.", a: "False"),
        Question(q: "Carnivores are animal eaters.", a: "True"),
        Question(q: "The human body consist of 206 bones.", a: "True"),
        Question(q: "Molecules are smaller than electrons.", a: "False"),
        Question(q: "Mars is closest planet to the Sun.", a: "False"),
        Question(q: "There are 7 continents in the world.", a: "True"),
        Question(q: "Canada is the 2nd largest country in the world.", a: "True"),
        Question(q: "Vatican City is the smallest city in the world.", a: "True"),
        Question(q: "Kneecap is also known as a patella.", a: "True"),
        Question(q: "Elephants are the biggest mammals in the world.", a: "False"),
        Question(q: "Sydney is the capital of Australia.", a: "False")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

