//
//  Exercise.swift
//  MyFit88
//
//  Created by Abdullah Bilgin on 4/30/23.
//

import Foundation

struct Exercise {
    let exerciseName: String
    let VideoName: String
    
    enum ExerciseEnum: String {
        case squat = "Squat"
        case stepUp = "Step up"
        case burpee = "Burpee"
        case sunSalute = "Sun Salute"
    }
}

extension Exercise {
    static let exercises = [
    Exercise(
        exerciseName: ExerciseEnum.squat.rawValue,
        VideoName: "squat"),
    Exercise(
        exerciseName: ExerciseEnum.stepUp.rawValue,
        VideoName: "step-up"),
    Exercise(
        exerciseName: ExerciseEnum.burpee.rawValue,
        VideoName: "burpee"),
    Exercise(
        exerciseName: ExerciseEnum.sunSalute.rawValue,
        VideoName: "sun-salute"),
    ]
}
