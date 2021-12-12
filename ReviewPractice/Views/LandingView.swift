//
//  LandingView.swift
//  ReviewPractice
//
//  Created by Judy Yu on 2021-12-11.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        VStack(spacing: 10) {
            List {
                //2
                NavigationLink(destination: {
                    
                    ContentView()
                    
                }, label: {
    
                    Text("Chapter 2: The Chemical Context of Life")
                })
                    .listRowSeparatorTint(.purple)
                //3
                NavigationLink(destination: {
                    
                    ContentView()
                    
                }, label: {
    
                    Text("Chapter 3 : Water and the Fitness of the Environment")
                })
                    .listRowSeparatorTint(.purple)
                //4
                NavigationLink(destination: {
                    
                    ContentView()
                    
                }, label: {
    
                    Text("Chapter 4 : Carbon and the Molecular Diversity of Life")
                })
                    .listRowSeparatorTint(.purple)
                //5
                NavigationLink(destination: {
                    
                    ContentView()
                    
                }, label: {
    
                    Text("Chapter 5 : The Structure and Function of Large Biological Molecules")
                })            .listRowSeparatorTint(.purple)
            }
            .listStyle(.insetGrouped)
            .listRowSeparatorTint(.purple)
        }
        .navigationTitle("Pre AP Bio Review")
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LandingView()
        }
    }
}
