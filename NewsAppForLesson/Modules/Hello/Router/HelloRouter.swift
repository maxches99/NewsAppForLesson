//
//  HelloRouter.swift
//  NewsAppForLesson
//
//  Created by Максим Чесников on 12.12.2021.
//

import Foundation

protocol HelloRouterInput {
    func openNextView()
}

protocol HelloRouterOutput {}

class HelloRouter {
    
    var output: HelloRouterOutput?
    
}

extension HelloRouter: HelloRouterInput {
    func openNextView() {
        print("HelloRouter.openNextView")
    }
}
