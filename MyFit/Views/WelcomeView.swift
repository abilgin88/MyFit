//
//  WelcomeView.swift
//  MyFit
//
//  Created by Abdullah Bilgin on 4/26/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            VStack {
                HeaderView(titleText: "Welcome")
                Spacer()
                Button("History") { }
                  .padding(.bottom)
            }
            VStack {
                HStack (alignment: .bottom) {
                VStack(alignment: .leading) {
                  Text("Get fit")
                    .font(.largeTitle)
                  Text("with high intensity interval training")
                    .font(.headline)
                }
                  Image("step-up")
                        .resizedToFill(width: 240, height: 240)
                        .clipShape(Circle())
//                      .resizable()
//                      .aspectRatio(contentMode: .fill)
//                      .frame(width: 240.0, height: 240.0)

              }
            }

        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
