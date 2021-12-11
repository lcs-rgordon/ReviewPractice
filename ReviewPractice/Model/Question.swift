//
//  Question.swift
//  ReviewPractice
//
//  Created by Judy Yu on 2021-12-11.
//

import Foundation

//structure multiple choice questions for chapter 2
struct ChoiceChapterTwo: Equatable {
    let question: String
    let choiceA: String
    let choiceB: String
    let choiceC: String
    let choiceD: String
    
}

//structure answer questions for chapter 2
struct TypeChapterTwo {
    let question: String
}

let listOfChoiceChapterTwo = [
    ChoiceChapterTwo(question: "How many naturally occurring elements are there?",
                     choiceA: "92",
                     choiceB: "90",
                     choiceC: "91",
                     choiceD: "88")
    ,
    ChoiceChapterTwo(question: "In the term trace element, the adjective trace means that",
                     choiceA: "the element is required in very small amounts.",
                     choiceB: "the element enhances health but is not essential for the organism's long-term survival.",
                     choiceC: "the element can be used as a label to trace atoms through an organism's metabolism.",
                     choiceD: "the element is very rare on Earth.")
    ,
    ChoiceChapterTwo(question: "The type of bonding and the numbers of covalent bonds an atom can form with other atoms is determined by _____. ",
                     choiceA: "the number of unpaired electrons in the valence shell",
                     choiceB: "the size of the atom; smaller atoms are chemically more reactive",
                     choiceC: "the number of protons",
                     choiceD: "the nucleus")
    ,
    ChoiceChapterTwo(question: "Changing the number of _____ would change an atom into an atom of a different element.",
                     choiceA: "protons in an atom",
                     choiceB: "bonds formed by an atom",
                     choiceC: "electrons circling the nucleus of an atom",
                     choiceD: "particles in the nucleus of an atom")
    ,
    ChoiceChapterTwo(question: "The reactivity of an atom arises from",
                     choiceA: "the existence of unpaired electrons in the valence shell.",
                     choiceB: "the average distance of the outermost electron shell from the nucleus.",
                     choiceC: "the potential energy of the valence shell.",
                     choiceD: "the sum of the potential energies of all the electron shells.")
]
