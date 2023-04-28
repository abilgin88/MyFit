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
    let index: Int
    let interval: TimeInterval = 30
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(exerciseName: exerciseNames[index])
                    .padding(.bottom)
                
                // Video Player
                if let url = Bundle.main.url(
                    forResource: videoNames[index],
                    withExtension: "mp4") {
                    VideoPlayer(player: AVPlayer(url: url))
                        .frame(height: geometry.size.height * 0.45)
                } else {
                    Text("Couldn't find \(videoNames[index]).mp4")
                        .foregroundColor(.red)
                }
                // timer
                Text(
                    Date()
                        .addingTimeInterval(interval), style: .timer
                )
                .font(.system(size: 90))
                
                // Start/Done button
                Button("Start/Done") {}
                    .font(.title3)
                    .padding()
                
                // rating view
                RatingView()
                    .padding()
                
                // History button
                Spacer()
                Button("History") {}
                    .padding(.bottom)
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 0)
    }
}


