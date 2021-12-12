//
//  HelloModel.swift
//  NewsAppForLesson
//
//  Created by Максим Чесников on 12.12.2021.
//

import Foundation
import Combine
import SwiftUI

class HelloModel: ObservableObject {
    @Published var unitPoint = UnitPoint.center
    @Published var angle = Angle.zero
    
    @Published var bottomText = "It's new news app for Lessons"
    
    var presenter: HelloPresenterInput?
    
    func viewIsReady() {
        withAnimation(Animation.linear(duration: 12).repeatForever(autoreverses: false)) {
            angle += .degrees(360)
        }
        presenter?.viewIsReady()
    }
}

extension HelloModel: HelloPresenterOutput {
    func publishText() {
        print("HelloModel.publishText")
    }
}
