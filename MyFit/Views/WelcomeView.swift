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
                      .resizable()
                      .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                      .frame(width: 240.0, height: 240.0)
                      .clipShape(Circle())
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
