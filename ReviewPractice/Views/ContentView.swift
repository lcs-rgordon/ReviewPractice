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
    
    //MARK: Computed properties
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            //question
            Text("Question?")
                .font(.title2)
            //choice A
            Button(action: {
                
            }, label: {
                Text("A. ")
            })
                .buttonStyle(GrowingButton())
            
            //choice B
            Button(action: {
                
            }, label: {
                Text("B. ")
            })
                .buttonStyle(GrowingButton())
            
            //choice C
            Button(action: {
                
            }, label: {
                Text("C. ")
            })
                .buttonStyle(GrowingButton())
            
            //choice D
            Button(action: {
                
            }, label: {
                Text("D. ")
            })
                .buttonStyle(GrowingButton())
            
            Spacer()
        }
        .navigationTitle("Multiple Choices")
        .padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
