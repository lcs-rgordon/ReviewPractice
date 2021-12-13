//
//  RevisedTestRandomChoicesView.swift
//  ReviewPractice
//
//  Created by Russell Gordon on 2021-12-13.
//

import SwiftUI

struct RevisedTestRandomChoicesView: View {
    
    //MARK: Stored properties
    
    // Stores the currently selected question
    @State var currentQuestion = listOfRevisedQuestions.randomElement()!
    
    // Stores the previously presented question
    @State var previousQuestion = listOfRevisedQuestions.randomElement()!
    
    // Presents the currently selected question
    // NOTE: The randomly selected question here will be overriden in the .task modifier.
    @State var presentedQuestion = QuestionForPresentation(questionToPresent: listOfRevisedQuestions.randomElement()!)

    // Whether the correct answer was selected
    @State var isRightAnswer = false
    
    // Whether to show feedback on answer
    @State var showFeedback = false

    //MARK: Computed properties
    // Feedback on answer
    var feedback: String {
        if showFeedback == true {
            switch isRightAnswer {
            case true:
                return "You got it right, congratulation!"
            default:
                return "This is not the right answer, try again!"
            }
        } else {
            return ""
        }
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            //question
            Text("Q: \(currentQuestion.question)")
                .font(.title2)
            //choice A
            Button(action: {
                withAnimation {
                    showFeedback = true
                    if presentedQuestion.possibleAnswers[0] == presentedQuestion.correctAnswer {
                        isRightAnswer = true
                    } else {
                        isRightAnswer = false
                    }
                }
            }, label: {
                HStack {
                    
                    Text("A. \(presentedQuestion.possibleAnswers[0])")
                    Spacer()
                }
            })
                .buttonStyle(GrowingButton())
            
            //choice B
            Button(action: {
                withAnimation {
                    showFeedback = true
                    if presentedQuestion.possibleAnswers[1] == presentedQuestion.correctAnswer {
                        isRightAnswer = true
                    } else {
                        isRightAnswer = false
                    }
                }
            }, label: {
                HStack {
                    Text("B. \(presentedQuestion.possibleAnswers[1])")
                    Spacer()
                }
            })
                .buttonStyle(GrowingButton())
            
            //choice C
            Button(action: {
                withAnimation {
                    showFeedback = true
                    if presentedQuestion.possibleAnswers[2] == presentedQuestion.correctAnswer {
                        isRightAnswer = true
                    } else {
                        isRightAnswer = false
                    }
                }
            }, label: {
                HStack {
                    Text("C. \(presentedQuestion.possibleAnswers[2])")
                    Spacer()
                }
            })
                .buttonStyle(GrowingButton())
            
            //choice D
            Button(action: {
                withAnimation {
                    showFeedback = true
                    if presentedQuestion.possibleAnswers[3] == presentedQuestion.correctAnswer {
                        isRightAnswer = true
                    } else {
                        isRightAnswer = false
                    }
                }
            }, label: {
                HStack {
                    Text("D. \(presentedQuestion.possibleAnswers[3])")
                    Spacer()
                }
            })
                .buttonStyle(GrowingButton())
            
            //next question
            HStack {
                Text(feedback)
                    .multilineTextAlignment(.center)
                Spacer()
                Button(action: {
                    //regenerate randomNumber
                    showFeedback = false
                    previousQuestion = currentQuestion
                    
                    while previousQuestion == currentQuestion {
                        
                        // Get another question
                        currentQuestion = listOfRevisedQuestions.randomElement()!
                        
                        // Present this question
                        presentedQuestion = QuestionForPresentation(questionToPresent: currentQuestion)
                    }
                    isRightAnswer = false
                }, label: {
                    Text("Next")
                    
                })
                    .buttonStyle(GrowingButton())
                //show the next button only when the right answer is pressed
                    .opacity(isRightAnswer ? 1.0 : 0.0)
            }
            .padding(.top, 20)
            
            Spacer()
            
        }
        .task {
            // When the page loads, present the selected question
            presentedQuestion = QuestionForPresentation(questionToPresent: currentQuestion)
        }
        .navigationTitle("Multiple Choices")
        .padding(30)
    }
}

struct RevisedTestRandomChoicesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RevisedTestRandomChoicesView()
        }
    }
}
