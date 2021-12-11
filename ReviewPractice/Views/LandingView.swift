//
//  LandingView.swift
//  ReviewPractice
//
//  Created by Judy Yu on 2021-12-11.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        VStack {
            List {
              Text("Chapter 2: The Chemical Context of Life")
              Text("Chapter 3 : Water and the Fitness of the Environment")
              Text("Chapter 4 : Carbon and the Molecular Diversity of Life")
              Text("Chapter 5 : The Structure and Function of Large Biological Molecules")

            }
            .listStyle(.grouped)
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
