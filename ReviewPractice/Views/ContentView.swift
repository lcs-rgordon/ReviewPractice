//
//  ContentView.swift
//  ReviewPractice
//
//  Created by Judy Yu on 2021-12-11.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored properties
    
    //MARK: Computed properties
    
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                //question
                Text("Question?")
                //choice A
                Button(action: {
                    
                }, label: {
                    Text("A. ")
                })
                    .buttonStyle(.bordered)
                
                //choice B
                Button(action: {
                    
                }, label: {
                    Text("B. ")
                })
                    .buttonStyle(.bordered)
                
                //choice C
                Button(action: {
                    
                }, label: {
                    Text("C. ")
                })
                    .buttonStyle(.bordered)
                
                //choice D
                Button(action: {
                    
                }, label: {
                    Text("D. ")
                })
                    .buttonStyle(.bordered)
            }
            .navigationTitle("Multiple Choices")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
