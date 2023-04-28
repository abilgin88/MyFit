//
//  HeaderView.swift
//  MyFit
//
//  Created by Abdullah Bilgin on 4/28/23.
//

import SwiftUI

struct HeaderView: View {
    // define an exerciseName property for text
    let exerciseName: String
    
    var body: some View {
        VStack {
            Text(exerciseName)
                .font(.largeTitle)
            HStack {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
            }
            .font(.title2) // font size applies to all views in the HStack
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        // add the missing parameter and add simple exercise name for the argument
        HeaderView(exerciseName: "Squart")
    }
}
