//
//  RevisedQuestion.swift
//  ReviewPractice
//
//  Created by Russell Gordon on 2021-12-13.
//

import Foundation

class RevisedQuestion: ObservableObject, Equatable {
    
    // MARK: Stored properties
    let question: String
    let incorrectAnswers: [String]
    let correctAnswer: String
    @Published var allAnswers: [String]
    
    
    // MARK: Initializer, this runs when the structure is first initialized (created)
    init(question: String,
         incorrectAnswers: [String],
         correctAnswer: String)
    {
        self.question = question
        self.incorrectAnswers = incorrectAnswers
        self.correctAnswer = correctAnswer
        
        // Create empty array
        var answers: [String] = []
        
        // Add all answers to the array
        answers.append(correctAnswer)
        answers.append(contentsOf: incorrectAnswers)
        
        // Set the answers
        self.allAnswers = answers
        
        // Shuffle the answers
        shuffleAnswers()

    }
    
    // MARK: Functions
    func shuffleAnswers() {
        allAnswers.shuffle()
    }

    // Required to conform with Equatable protocol
    static func == (lhs: RevisedQuestion, rhs: RevisedQuestion) -> Bool {
        
        // Two insances of RevisedQuestion are identical when the text of the question property is the same...
        return lhs.question == rhs.question
    }

    
}

let listOfRevisedQuestions = [

    RevisedQuestion(question: listOfChoiceChapterTwo.first!.question,
                    incorrectAnswers: [
                        
                        listOfChoiceChapterTwo.first!.choiceB,
                        listOfChoiceChapterTwo.first!.choiceC,
                        listOfChoiceChapterTwo.first!.choiceD,

                        
                    ],
                    correctAnswer: listOfChoiceChapterTwo.first!.choiceA)
    
    ,
    
    RevisedQuestion(question: listOfChoiceChapterTwo.last!.question,
                    incorrectAnswers: [
                        
                        listOfChoiceChapterTwo.last!.choiceB,
                        listOfChoiceChapterTwo.last!.choiceC,
                        listOfChoiceChapterTwo.last!.choiceD,

                        
                    ],
                    correctAnswer: listOfChoiceChapterTwo.last!.choiceA)


]
