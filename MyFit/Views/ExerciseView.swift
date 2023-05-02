//
//  ExerciseView.swift
//  MyFit
//
//  Created by Abdullah Bilgin on 4/26/23.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    let videoNames = ["squat", "step-up", "burpee", "sun-salute"]
    let exerciseNames = ["Squatt", "Step Up", "Burpee", "Sun Salute"]
    @State private var rating = 0
    @Binding var selectedTab: Int
    let index: Int
    let interval: TimeInterval = 30
    var lastExercise: Bool {
        index + 1 == Exercise.exercises.count
    }
    // Computed Properties for Button
    var startButton: some View {
        Button(NSLocalizedString(
            "Start Exercise",
            comment: "begin exercise")
        ) {}
    }
    var doneButton: some View {
        Button(NSLocalizedString(
            "Done",
            comment: "mark as finished")
        ) {
            selectedTab = lastExercise ? 9 : selectedTab + 1
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(titleText: Exercise.exercises[index].exerciseName, selectedTab: $selectedTab)
                    .padding(.bottom)
                
                // Video Player
                if let url = Bundle.main.url(
                    forResource: videoNames[index],
                    withExtension: "mp4") {
                    VideoPlayer(player: AVPlayer(url: url))
                        .frame(height: geometry.size.height * 0.45)
                } else {
                    Text("Couldn't find \(Exercise.exercises[index].VideoName).mp4")
                        .foregroundColor(.red)
                }
                // timer
                Text(
                    Date()
                        .addingTimeInterval(interval), style: .timer
                )
                .font(.system(size: 90))
                
                // Start/Done button
                HStack(spacing: 150) {
                    startButton
                    doneButton
                }
                .padding()
                .font(.title3)
                
                // rating view
                RatingView(rating: $rating)
                    .padding()
                
                // History button
                Spacer()
                Button(NSLocalizedString("History", comment: "view user activity")) {}
                    .padding(.bottom)
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(selectedTab: .constant(1), index: 0)
    }
}


