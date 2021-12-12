//
//  HelloView.swift
//  NewsAppForLesson
//
//  Created by Максим Чесников on 12.12.2021.
//

import SwiftUI

struct HelloView: View {
    
    @ObservedObject var model: HelloModel
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(
                    AngularGradient(
                        colors: [
                            Color("Red"),
                            Color("Blue"),
                            Color("Sea"),
                            Color("Pink"),
                            Color("Yellow"),
                            Color("Red")
                        ],
                        center: model.unitPoint,
                        angle: model.angle
                    )
                )
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text(model.bottomText)
                    .fontWeight(.bold)
                    .font(.title3)
            }
            .foregroundColor(.white)
            .padding()
            VStack {
                Image(systemName: "newspaper.fill")
                    .resizable()
                    .foregroundColor(.white)
                    .frame(width: 80, height: 80, alignment: .center)
            }
        }
        .onAppear(perform: {
            model.viewIsReady()
        })
    }
}

struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        HelloView(model: HelloModel())
    }
}
