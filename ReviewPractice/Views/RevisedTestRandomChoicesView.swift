//
//  RevisedTestRandomChoicesView.swift
//  ReviewPractice
//
//  Created by Russell Gordon on 2021-12-13.
//

import SwiftUI

struct RevisedTestRandomChoicesView: View {
    
    //MARK: Stored properties
    @State var currentQuestion = listOfRevisedQuestions.randomElement()!
    
    //check previous question
    @State var previousQuestion = listOfRevisedQuestions.randomElement()!
    
    @State var isRightAnswer = false
    
    @State var showFeedback = false

    //MARK: Computed properties
    
    //return feedback
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
                    if currentQuestion.allAnswers[0] == currentQuestion.correctAnswer {
                        isRightAnswer = true
                    } else {
                        isRightAnswer = false
                    }
                }
            }, label: {
                HStack {
                    
                    Text("A. \(currentQuestion.allAnswers[0])")
                    Spacer()
                }
            })
                .buttonStyle(GrowingButton())
            
            //choice B
            Button(action: {
                withAnimation {
                    showFeedback = true
                    if currentQuestion.allAnswers[1] == currentQuestion.correctAnswer {
                        isRightAnswer = true
                    } else {
                        isRightAnswer = false
                    }
                }
            }, label: {
                HStack {
                    Text("B. \(currentQuestion.allAnswers[1])")
                    Spacer()
                }
            })
                .buttonStyle(GrowingButton())
            
            //choice C
            Button(action: {
                withAnimation {
                    showFeedback = true
                    if currentQuestion.allAnswers[2] == currentQuestion.correctAnswer {
                        isRightAnswer = true
                    } else {
                        isRightAnswer = false
                    }
                }
            }, label: {
                HStack {
                    Text("C. \(currentQuestion.allAnswers[2])")
                    Spacer()
                }
            })
                .buttonStyle(GrowingButton())
            
            //choice D
            Button(action: {
                withAnimation {
                    showFeedback = true
                    if currentQuestion.allAnswers[3] == currentQuestion.correctAnswer {
                        isRightAnswer = true
                    } else {
                        isRightAnswer = false
                    }
                }
            }, label: {
                HStack {
                    Text("D. \(currentQuestion.allAnswers[3])")
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
                        
                        // Shuffle order of answers on the selected question
                        currentQuestion.shuffleAnswers()
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
