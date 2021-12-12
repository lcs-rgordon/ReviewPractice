//
//  ContentView.swift
//  ReviewPractice
//
//  Created by Judy Yu on 2021-12-11.
//

import SwiftUI

//button style
struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical, 10)
            .padding(.horizontal, 15)
            .background(configuration.isPressed ? Color.purple.opacity(0.5) : Color.white)
            .foregroundColor(.black)
            .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.purple, lineWidth: 2)
            )
            .scaleEffect(configuration.isPressed ? 1.1 : 1)
            .animation(.easeOut(duration: 0.3), value: configuration.isPressed)
    }
}

struct ContentView: View {
    
    //MARK: Stored properties
    @State var currentQuestion = listOfChoiceChapterTwo.randomElement()!
    
    //check previous question
    @State var previousQuestion = listOfChoiceChapterTwo.randomElement()!
    
    //@State private var userChoice = ""
    
    let choiceOne = Int.random(in: 1..<4)
    
    //@State var firstChoice = ""
    
    //MARK: Computed properties
    //check user's choice
    //    var isRightAnswer: Bool {
    //        if userChoice == currentQuestion.choiceA {
    //            return true
    //        } else {
    //            return false
    //        }
    //    }
    @State var isRightAnswer = false
    
    //return feedback
    @State var showFeedback = false
    
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
    
    //    var firstChoice: String {
    //        if choiceOne == 1 {
    //            firstChoice = "\(currentQuestion.choiceA)"
    //        } else if choiceOne == 2 {
    //            firstChoice = "\(currentQuestion.choiceB)"
    //        }
    //    }
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            //question
            Text("Q: \(currentQuestion.question)")
                .font(.title2)
            //choice A
            Button(action: {
                withAnimation {
                    showFeedback = true
                    isRightAnswer = true
                }
            }, label: {
                HStack {
                    
                    Text("A. \(currentQuestion.choiceA)")
                    Spacer()
                }
            })
                .buttonStyle(GrowingButton())
            
            //choice B
            Button(action: {
                withAnimation {
                    showFeedback = true
                    isRightAnswer = false
                }
            }, label: {
                HStack {
                    Text("B. \(currentQuestion.choiceB)")
                    Spacer()
                }
            })
                .buttonStyle(GrowingButton())
            
            //choice C
            Button(action: {
                withAnimation {
                    showFeedback = true
                    isRightAnswer = false
                }
            }, label: {
                HStack {
                    Text("C. \(currentQuestion.choiceC)")
                    Spacer()
                }
            })
                .buttonStyle(GrowingButton())
            
            //choice D
            Button(action: {
                withAnimation {
                    showFeedback = true
                    isRightAnswer = false
                }
            }, label: {
                HStack {
                    Text("D. \(currentQuestion.choiceD)")
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
                    showFeedback = false
                    previousQuestion = currentQuestion
                    
                    while previousQuestion == currentQuestion {
                        //get another question
                        currentQuestion = listOfChoiceChapterTwo.randomElement()!
                    }
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
