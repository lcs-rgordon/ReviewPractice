//
//  QuestionForPresentation.swift
//  ReviewPractice
//
//  Created by Russell Gordon on 2021-12-13.
//

import Foundation

struct QuestionForPresentation {
    
    let question: String
    let correctAnswer: String
    let possibleAnswers: [String]
    
    init(questionToPresent: RevisedQuestion) {
        
        // Populate question and correct answer
        self.question = questionToPresent.question
        self.correctAnswer = questionToPresent.correctAnswer
        
        // Populate possible answers
        var answers: [String] = []
        answers.append(questionToPresent.correctAnswer)
        answers.append(contentsOf: questionToPresent.incorrectAnswers)
        
        // Shuffle possible answers
        answers.shuffle()
        self.possibleAnswers = answers
        
    }
    
}
