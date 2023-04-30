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
