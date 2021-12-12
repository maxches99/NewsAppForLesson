//
//  HelloInteractor.swift
//  NewsAppForLesson
//
//  Created by Максим Чесников on 12.12.2021.
//

import Foundation

protocol HelloInteractorInput {
    func fetchImages()
}
protocol HelloInteractorOutput {
    func imagesFetched()
}

class HelloInteractor {
    
    var output: HelloInteractorOutput?
    
    
}

extension HelloInteractor: HelloInteractorInput {
    func fetchImages() {
        print("HelloInteractor.fetchImages")
        output?.imagesFetched()
    }
}
