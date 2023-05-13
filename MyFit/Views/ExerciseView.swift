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
    @State private var showHistory = false
    @State private var showSuccess = false
    @Binding var selectedTab: Int
    let index: Int
    @State private var timerDone = false
    @State private var showTimer = false
    var lastExercise: Bool {
        index + 1 == Exercise.exercises.count
    }
    // Computed Properties for Button
    var startButton: some View {
        Button(NSLocalizedString(
            "Start Exercise",
            comment: "begin exercise")
        ) {
            showTimer.toggle()
        }
    }
    var doneButton: some View {
        Button(NSLocalizedString(
            "Done",
            comment: "mark as finished")
        ) {
            timerDone = false
            showTimer.toggle()
            if lastExercise {
                showSuccess.toggle()
            } else {
                selectedTab += 1
            }
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

                HStack(spacing: 150) {
                    startButton
                    doneButton
                        .disabled(!timerDone)
                        .sheet(isPresented: $showSuccess) {
                            SuccessView(selectedTab: $selectedTab)
                                .presentationDetents([.medium,.large])
                        }
                }
                .padding()
                .font(.title3)
                
                // timer
                if showTimer {
                    TimerView(
                        timerDone: $timerDone,
                        size: geometry.size.height * 0.07
                    )
                }
                Spacer()
                // rating view
                RatingView(exerciseIndex: index)
                    .padding()
                
                // History button
                Spacer()
                Button(NSLocalizedString("History", comment: "view user activity")) {
                    showHistory.toggle()
                }
                .sheet(isPresented: $showHistory) {
                    HistoryView(showHistory: $showHistory)
                }
                .padding(.bottom)
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(selectedTab: .constant(3), index: 3)
    }
}


