//
//  HistoryStoreDevData.swift
//  MyFit88
//
//  Created by Abdullah Bilgin on 4/30/23.
//

import Foundation

extension HistorryStore {
    mutating func createDevData() {
        // Development data
        exerciseDays = [
            ExerciseDay(
                date: Date().addingTimeInterval(-86400),
                exercises: [
                    Exercise.exercises[0].exerciseName,
                    Exercise.exercises[1].exerciseName,
                    Exercise.exercises[2].exerciseName
                ]),
            ExerciseDay(
                date: Date().addingTimeInterval(-86400 * 2),
                exercises: [
                    Exercise.exercises[1].exerciseName,
                    Exercise.exercises[2].exerciseName
                ])
        ]
    }
}
