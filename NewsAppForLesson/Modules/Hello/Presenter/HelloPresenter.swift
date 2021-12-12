//
//  HelloPresenter.swift
//  NewsAppForLesson
//
//  Created by Максим Чесников on 12.12.2021.
//

import Foundation

protocol HelloPresenterInput {
    var text: String { get set }
    
    func viewIsReady()
}
protocol HelloPresenterOutput {
    func publishText()
}

class HelloPresenter {
    
    var output: HelloPresenterOutput?
    var interactor: HelloInteractorInput?
    var router: HelloRouterInput?
    
}

/// В данном случае конфигурация самого презентера
extension HelloPresenter: HelloPresenterInput {
    var text: String {
        get {
            ""
        }
        set {
            //
        }
    }
    
    func viewIsReady() {
        print("HelloPresenter.viewIsReady")
        interactor?.fetchImages()
    }
    
}

/// В данном случае конфигурация вывода данных из интерактора
extension HelloPresenter: HelloInteractorOutput {
    func imagesFetched() {
        print("HelloPresenter.imagesFetched")
        router?.openNextView()
        output?.publishText()
    }
    
    
}

/// В данном случае конфигурация вывода данных из роутера
extension HelloPresenter: HelloRouterOutput {
    
}
