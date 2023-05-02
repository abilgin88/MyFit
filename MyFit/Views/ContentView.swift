//
//  ContentView.swift
//  MyFit
//
//  Created by Abdullah Bilgin on 4/26/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 9
    
  var body: some View {
    TabView(selection: $selectedTab) {
        WelcomeView(selectedTab: $selectedTab) // pass the binding $selectedTab
            .tag(9) // use 9 for the tag of WelcomeView
        ForEach(Exercise.exercises.indices, id: \.self) { index in
            ExerciseView(selectedTab: $selectedTab, index: index) // pass the binding $selectedTab
                .tag(index) //  tag each ExerciseView with its index in Exercise.exercises
      }
    }
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
