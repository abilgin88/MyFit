//
//  HeaderView.swift
//  MyFit
//
//  Created by Abdullah Bilgin on 4/28/23.
//

import SwiftUI

struct HeaderView: View {
    let titleText: String
    @Binding var selectedTab: Int
    
    var body: some View {
        VStack {
            Text(titleText)
                .font(.largeTitle)
            HStack {
                ForEach(Exercise.exercises.indices, id: \.self) { index in
                    let fill = index == selectedTab ? ".fill" : ""
                    Image(systemName: "\(index + 1).circle\(fill)")
                        .onTapGesture {
                            selectedTab = index
                        }
                }
            }
            .font(.title2)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(titleText: "Squat", selectedTab: .constant(0))
                .previewLayout(.sizeThatFits)
            HeaderView(titleText: "Squat", selectedTab: .constant(0))
                .preferredColorScheme(.dark)
                .environment(\.sizeCategory, .accessibilityLarge)
                .previewLayout(.sizeThatFits)
        }
    }
}
