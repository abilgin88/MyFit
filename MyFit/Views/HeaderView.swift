//
//  HeaderView.swift
//  MyFit
//
//  Created by Abdullah Bilgin on 4/28/23.
//

import SwiftUI

struct HeaderView: View {
    // define an exerciseName property for text
    let titleText: String
    
    var body: some View {
        VStack {
            Text(titleText)
                .font(.largeTitle)
            HStack {
                Image(systemName: "hand.wave")
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
        Group {
          HeaderView(titleText: "Squat")
            .previewLayout(.sizeThatFits)
          HeaderView(titleText: "Squat")
            .preferredColorScheme(.dark)
            .environment(\.sizeCategory, .accessibilityLarge)
            .previewLayout(.sizeThatFits)
        }
    }
}
