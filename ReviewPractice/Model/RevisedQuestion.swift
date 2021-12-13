//
//  RevisedQuestion.swift
//  ReviewPractice
//
//  Created by Russell Gordon on 2021-12-13.
//

import Foundation

struct RevisedQuestion: Equatable {
    
    // MARK: Stored properties
    let question: String
    let correctAnswer: String
    let incorrectAnswers: [String]
    
    // Required to conform with Equatable protocol
    static func == (lhs: RevisedQuestion, rhs: RevisedQuestion) -> Bool {
        
        // Two insances of RevisedQuestion are identical when the text of the question property is the same...
        return lhs.question == rhs.question
    }
    
}

let listOfRevisedQuestions = [

    RevisedQuestion(question: "How many naturally occurring elements are there?",
                    correctAnswer: "92",
                    incorrectAnswers: [
                        
                        "90",
                        "91",
                        "88"
                        
                    ]
                    )

    ,
    
    RevisedQuestion(question: "In the term trace element, the adjective trace means that _____.",
                    correctAnswer: "the element is required in very small amounts.",
                    incorrectAnswers: [
                        
                        "the element enhances health but is not essential for the organism's long-term survival.",
                        "the element can be used as a label to trace atoms through an organism's metabolism.",
                        "the element is very rare on Earth."
                        
                    ]
                    )

    ,


    RevisedQuestion(question: "The type of bonding and the numbers of covalent bonds an atom can form with other atoms is determined by _____.",
                    correctAnswer: "the number of unpaired electrons in the valence shell",
                    incorrectAnswers: [
                        
                        "the size of the atom; smaller atoms are chemically more reactive",
                        "the number of protons",
                        "the nucleus"
                        
                    ]
                    )

    ,

    RevisedQuestion(question: "Changing the number of _____ would change an atom into an atom of a different element.",
                    correctAnswer: "protons in an atom",
                    incorrectAnswers: [
                        
                        "bonds formed by an atom",
                        "electrons circling the nucleus of an atom",
                        "particles in the nucleus of an atom"
                        
                    ]
                    )

    ,

    RevisedQuestion(question: "The reactivity of an atom arises from _____.",
                    correctAnswer: "the existence of unpaired electrons in the valence shell.",
                    incorrectAnswers: [
                        
                        "the average distance of the outermost electron shell from the nucleus.",
                        "the potential energy of the valence shell.",
                        "the sum of the potential energies of all the electron shells."
                        
                    ]
                    )

    ,
]
