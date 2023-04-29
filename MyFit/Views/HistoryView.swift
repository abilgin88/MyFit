//
//  HistoryView.swift
//  MyFit
//
//  Created by Abdullah Bilgin on 4/29/23.
//

import SwiftUI

struct HistoryView: View {
    let today = Date()
    let yesterday = Date().addingTimeInterval(-86400)
    let exercises1 = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    let exercises2 = ["Squat", "Step Up", "Burpee"]
    
    var body: some View {
        VStack {
            Text("History")
                .font(.title)
                .padding()
            Form {
                Section(
                    header:
                        Text(today.formatted(.dateTime.day().month()))
                        .font(.headline)) {
                            // section content
                        }
                Section(
                    header:
                        Text(yesterday.formatted(.dateTime.day().month()))
                        .font(.headline)) {
                            // Section content
                        }
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
