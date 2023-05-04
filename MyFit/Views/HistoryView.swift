//
//  HistoryView.swift
//  MyFit
//
//  Created by Abdullah Bilgin on 4/29/23.
//

import SwiftUI

struct HistoryView: View {
    let history = HistorryStore()
    @Binding var showHistory: Bool
    
    var body: some View {
        ZStack (alignment: .topTrailing) {
            Button(action: { showHistory.toggle() }) {
                Image(systemName: "xmark.circle")
            }
            .font(.title)
            .padding()
            
            VStack {
                Text(NSLocalizedString("History", comment: "view user activity"))
                    .font(.title)
                    .padding()
                Form {
                    ForEach(history.exerciseDays) { day in
                        Section(
                            header:
                                Text(day.date.formatted(as: "MMM d"))
                                .font(.headline))
                        {
                            ForEach(day.exercises, id: \.self) { exercise in
                                Text(exercise)
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct HistoryView_Previews: PreviewProvider {
        static var previews: some View {
            HistoryView(showHistory: .constant(true))
        }
    }
}
