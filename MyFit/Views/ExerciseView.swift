//
//  ExerciseView.swift
//  MyFit
//
//  Created by Abdullah Bilgin on 4/26/23.
//

import SwiftUI

struct ExerciseView: View {
  // creating arrays for video names and exercises names
  let videoNames = ["squat", "step-up", "burpee", "sun-salute"]
  let exerciseNames = ["Squat", "Step Up", "Burpee", "Sun Salute"]
  let index: Int
  
    var body: some View {
      // display the correct name for each exercise
        VStack {
            // outlining the exercises view
            VStack {
                Text(exerciseNames[index])
                    .font(.largeTitle)
                HStack {
                    Image(systemName: "1.circle")
                        .font(.largeTitle) // Overriding the stack’s font size for the first symbol
                    Image(systemName: "2.circle")
                    Image(systemName: "3.circle")
                    Image(systemName: "4.circle")
                }
                .font(.title2) // font size applies to all views in the HStack
            }
            
            Text("Video player") // simple view -> create here
            Text("Timer") // simple view -> create here
            Text("Start/Done button") // simple view -> create here
            Text("Rating") // ratingview -> own file
            Text("History button")
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
      ExerciseView(index: 0)
    }
}
