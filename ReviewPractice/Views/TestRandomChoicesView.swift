//
//  TestRandomChoicesView.swift
//  ReviewPractice
//
//  Created by Judy Yu on 2021-12-12.
//

import SwiftUI

struct TestRandomChoicesView: View {
    
    //MARK: Stored properties
    @State var currentQuestion = listOfChoiceChapterTwo.randomElement()!
    
    //check previous question
    @State var previousQuestion = listOfChoiceChapterTwo.randomElement()!
    
    @State var isRightAnswer = false
    
    @State var showFeedback = false

    @State var randomNumber = Int.random(in: 1...4)
    
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
    
    var firstChoice: String {
            if randomNumber == 1 {
                return "\(currentQuestion.choiceA)"
            } else if randomNumber == 2 {
                return "\(currentQuestion.choiceB)"
            } else if randomNumber == 3 {
                return "\(currentQuestion.choiceC)"
            } else {
                return "\(currentQuestion.choiceD)"
            }
        }
    
    var secondChoice: String {
            if randomNumber == 1 {
                return "\(currentQuestion.choiceB)"
            } else if randomNumber == 2 {
                return "\(currentQuestion.choiceC)"
            } else if randomNumber == 3 {
                return "\(currentQuestion.choiceD)"
            } else {
                return "\(currentQuestion.choiceA)"
            }
        }
    
    var thirdChoice: String {
            if randomNumber == 1 {
                return "\(currentQuestion.choiceC)"
            } else if randomNumber == 2 {
                return "\(currentQuestion.choiceD)"
            } else if randomNumber == 3 {
                return "\(currentQuestion.choiceA)"
            } else {
                return "\(currentQuestion.choiceB)"
            }
        }
    
    var fourthChoice: String {
            if randomNumber == 1 {
                return "\(currentQuestion.choiceD)"
            } else if randomNumber == 2 {
                return "\(currentQuestion.choiceA)"
            } else if randomNumber == 3 {
                return "\(currentQuestion.choiceB)"
            } else {
                return "\(currentQuestion.choiceC)"
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
                    if firstChoice == "\(currentQuestion.choiceA)" {
                        isRightAnswer = true
                    } else {
                        isRightAnswer = false
                    }
                }
            }, label: {
                HStack {
                    
                    Text("A. \(firstChoice)")
                    Spacer()
                }
            })
                .buttonStyle(GrowingButton())
            
            //choice B
            Button(action: {
                withAnimation {
                    showFeedback = true
                    if secondChoice == currentQuestion.choiceA {
                        isRightAnswer = true
                    } else {
                        isRightAnswer = false
                    }
                }
            }, label: {
                HStack {
                    Text("B. \(secondChoice)")
                    Spacer()
                }
            })
                .buttonStyle(GrowingButton())
            
            //choice C
            Button(action: {
                withAnimation {
                    showFeedback = true
                    if thirdChoice == currentQuestion.choiceA {
                        isRightAnswer = true
                    } else {
                        isRightAnswer = false
                    }
                }
            }, label: {
                HStack {
                    Text("C. \(thirdChoice)")
                    Spacer()
                }
            })
                .buttonStyle(GrowingButton())
            
            //choice D
            Button(action: {
                withAnimation {
                    showFeedback = true
                    if fourthChoice == currentQuestion.choiceA {
                        isRightAnswer = true
                    } else {
                        isRightAnswer = false
                    }
                }
            }, label: {
                HStack {
                    Text("D. \(fourthChoice)")
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
                    randomNumber = Int.random(in: 1...4)
                    showFeedback = false
                    previousQuestion = currentQuestion
                    
                    while previousQuestion == currentQuestion {
                        //get another question
                        currentQuestion = listOfChoiceChapterTwo.randomElement()!
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

struct TestRandomChoicesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TestRandomChoicesView()
        }
    }
}
