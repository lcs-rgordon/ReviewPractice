//
//  TestRandomChoicesView.swift
//  ReviewPractice
//
//  Created by Judy Yu on 2021-12-12.
//

import SwiftUI
extension Int {
    static func random(in range: ClosedRange<Int>, excluding x: Int) -> Int {
        if range.contains(x) {
            let r = Int.random(in: Range(uncheckedBounds: (range.lowerBound, range.upperBound)))
            return r == x ? range.upperBound : r
        } else {
            return Int.random(in: range)
        }
    }
}

struct TestRandomChoicesView: View {
    
    //MARK: Stored properties
    @State var currentQuestion = listOfChoiceChapterTwo.randomElement()!
    
    //check previous question
    @State var previousQuestion = listOfChoiceChapterTwo.randomElement()!
    
    @State private var userChoice = ""
    
//    @State var regenerateNumber = false
//    var randomNumber: Int {
//        if regenerateNumber == true {
//            return Int.random(in: 1...4)
//        } else {
//            return Int.random(in: 1...4)
//        }
//    }
    @State var randomNumber = Int.random(in: 1...4)
    
    //MARK: Computed properties

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
    
//    var choice = Int.random(in: 1...4)
//    for _ in 1...4 {
//        r = Int.random(in: 1...4, excluding: r)
//        print(r, terminator: " ")
//    }
    
//    var secondChoice: String {
//        while choiceOne == choiceTwo {
//            choiceTwo = Int.random(in: 1...4)
//        }
//        if choiceTwo == 1 {
//            return "\(currentQuestion.choiceA)"
//        } else if choiceTwo == 2 {
//            return "\(currentQuestion.choiceB)"
//        } else if choiceTwo == 3 {
//            return "\(currentQuestion.choiceC)"
//        } else {
//            return "\(currentQuestion.choiceD)"
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
                    showFeedback = false
                    previousQuestion = currentQuestion
                    
                    while previousQuestion == currentQuestion {
                        //get another question
                        currentQuestion = listOfChoiceChapterTwo.randomElement()!
                    }
                    isRightAnswer = false
                    //regenerateNumber = true
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
