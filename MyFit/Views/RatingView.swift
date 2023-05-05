//
//  RatingView.swift
//  MyFit
//
//  Created by Abdullah Bilgin on 4/28/23.
//

import SwiftUI

struct RatingView: View {
    let exerciseIndex: Int
    @AppStorage("ratings") private var ratings = ""
    @State private var rating = 0
    let maximumRating = 5
    let onColor = Color.red
    let offColor = Color.gray
    
    func updateRating(index: Int) {
        rating = index
        let index = ratings.index(ratings.startIndex, offsetBy: exerciseIndex)
        ratings.replaceSubrange(index...index, with: String(rating))
    }
    
    init(exerciseIndex: Int) {
        self.exerciseIndex = exerciseIndex
        let desiredLenght = Exercise.exercises.count
        if ratings.count < desiredLenght {
            ratings = ratings.padding(toLength: desiredLenght,
                                      withPad: "0",
                                      startingAt: 0)
        }
    }
    
    var body: some View {
        HStack {
            ForEach(1 ..< maximumRating + 1, id:  \.self) { index in
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor(
                        index > rating ? offColor : onColor
                    )
                    .onTapGesture {
                        updateRating(index: index)
                    }
                    .onAppear {
                        let index = ratings.index(
                            ratings.startIndex,
                            offsetBy: exerciseIndex)
                        let character = ratings[index]
                        rating = character.wholeNumberValue ?? 0
                    }
            }
        }
        .font(.largeTitle)
    }
}

struct RatingView_Previews: PreviewProvider {
    @AppStorage("ratings") static var ratings: String?
    static var previews: some View {
        ratings = nil
        return RatingView(exerciseIndex: 0)
            .previewLayout(.sizeThatFits)
    }
}
