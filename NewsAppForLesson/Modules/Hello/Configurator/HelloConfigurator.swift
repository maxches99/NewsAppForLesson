//
//  HelloConfigurator.swift
//  NewsAppForLesson
//
//  Created by Максим Чесников on 12.12.2021.
//

import SwiftUI

class HelloConfigurator {
    static func configure() -> HelloView {
        var model = HelloModel()
        var presenter = HelloPresenter()
        var interactor = HelloInteractor()
        var router = HelloRouter()
        
        model.presenter = presenter
        presenter.output = model
        
        presenter.interactor = interactor
        interactor.output = presenter
        
        presenter.router = router
        router.output = presenter
        
        var view = HelloView(model: model)
        return view
    }
}
