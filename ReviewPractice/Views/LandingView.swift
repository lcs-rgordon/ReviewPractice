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
            }
        }
        .navigationTitle("Pre AP Bio Review")
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
