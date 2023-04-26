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
      WelcomeView()  // was Text("Welcome")
      ExerciseView(index: 0) // was Text("Exercise 2")
      Text("Exercise 2")
    }
    // To make the tabs behave like pages
    .tabViewStyle(PageTabViewStyle())
    // style uses small index dot
    .indexViewStyle(
      PageIndexViewStyle(backgroundDisplayMode: .always))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
