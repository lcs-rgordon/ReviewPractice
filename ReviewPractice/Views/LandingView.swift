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
                    HStack {
                        Text("Chapter 2: ")
                        Text("The Chemical Context of Life")
                    }
                    .padding(.vertical, 8)
                })
                    .listRowSeparatorTint(.purple)
                //3
                NavigationLink(destination: {
                    
                    ContentView()
                    
                }, label: {
                    HStack {
                        Text("Chapter 3: ")
                        Text("Water and the Fitness of the Environment")
                    }
                    .padding(.vertical, 8)
                })
                    .listRowSeparatorTint(.purple)
                //4
                NavigationLink(destination: {
                    
                    ContentView()
                    
                }, label: {
                    HStack {
                        Text("Chapter 4 : ")
                        Text("Carbon and the Molecular Diversity of Life")
                            .truncationMode(.middle)
                    }
                    .padding(.vertical, 8)
                })
                    .listRowSeparatorTint(.purple)
                //5
                NavigationLink(destination: {
                    
                    ContentView()
                    
                }, label: {
                    HStack {
                        Text("Chapter 5 : ")
                        Text("The Structure and Function of Large Biological Molecules")
                    }
                    .padding(.vertical, 8)
                })
                    .listRowSeparatorTint(.purple)
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
