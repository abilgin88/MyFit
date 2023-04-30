//
//  ContentView.swift
//  MyFit
//
//  Created by Abdullah Bilgin on 4/26/23.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    // create tabview for the pages and add tabItem modifier
    TabView {
      WelcomeView()
      // loop over the range for excercises
        ForEach(0 ..< Exercise.exercises.count) { index in
        ExerciseView(index: index)
      }
    }
    // remove dots
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
