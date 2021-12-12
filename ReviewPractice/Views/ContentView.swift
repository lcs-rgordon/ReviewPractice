//
//  ContentView.swift
//  ReviewPractice
//
//  Created by Judy Yu on 2021-12-11.
//

import SwiftUI

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

    @State var firstChoice = ""
    
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
    var feedback: String {
        switch isRightAnswer {
            case true:
                return "You got it right, congratulation!"
            default:
                return "This is not the right answer, try again!"
        }
    }
    
    //show and hide feedback
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            //question
            Text("Q: \(currentQuestion.question)")
                .font(.title2)
            //choice A
            Button(action: {
                
            }, label: {
                HStack {
                    
                    //Text("A. \(currentQuestion.choiceA)")
                    Spacer()
                }
            })
                .buttonStyle(GrowingButton())
            
            //choice B
            Button(action: {
                
            }, label: {
                HStack {
                    Text("B. ")
                    Spacer()
                }
            })
                .buttonStyle(GrowingButton())
            
            //choice C
            Button(action: {
                
            }, label: {
                HStack {
                    Text("C. ")
                    Spacer()
                }
            })
                .buttonStyle(GrowingButton())
            
            //choice D
            Button(action: {
                
            }, label: {
                HStack {
                    Text("D. ")
                    Spacer()
                }
            })
                .buttonStyle(GrowingButton())
            
            //next question
            HStack {
                Text(feedback)
                Spacer()
                Button(action: {
                    previousQuestion = currentQuestion
                    
                    while previousQuestion == currentQuestion {
                        //get another question
                        currentQuestion = listOfChoiceChapterTwo.randomElement()!
                    }
                }, label: {
                        Text("Next")

                })
                    .buttonStyle(GrowingButton())
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
