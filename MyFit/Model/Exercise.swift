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
    
    enum ExerciseEnum: CustomStringConvertible {
        case squat
        case stepUp
        case burpee
        case sunSalute
        
        var description: String {
            switch self {
            case .squat:
                return NSLocalizedString("Squat", comment: "exercise")
            case .stepUp:
                return NSLocalizedString("Step Up", comment: "exercise")
            case .burpee:
                return NSLocalizedString("Burpee", comment: "exercise")
            case .sunSalute:
                return NSLocalizedString("Sun Salute", comment: "exercise")
            }
        }
    }
}

extension Exercise {
    static let exercises = [
    Exercise(
        exerciseName: String(describing: ExerciseEnum.squat),
        VideoName: "squat"),
    Exercise(
        exerciseName: String(describing: ExerciseEnum.stepUp),
        VideoName: "step-up"),
    Exercise(
        exerciseName: String(describing: ExerciseEnum.burpee),
        VideoName: "burpee"),
    Exercise(
        exerciseName: String(describing: ExerciseEnum.sunSalute),
        VideoName: "sun-salute"),
    ]
}
