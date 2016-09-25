//
//  LocationPickerInterceptor.swift
//  GoJek
//
//  Created by admin on 02/08/16.
//  Copyright © 2016 GoJek. All rights reserved.
//

import Foundation

protocol IToDoListInterceptor  : class {
    var presenter : IToDoListPresenter? {get set}
    func getTodos()
}


class ToDoListInterceptor : IToDoListInterceptor {
    weak var _presenter: IToDoListPresenter?
    var service: ITodoService
    
    var presenter : IToDoListPresenter? {
        set { _presenter = newValue }
        get { return _presenter}
    }
    
    init(service: ITodoService) {
        self.service = service
    }
    
    func getTodos() {
        service.getTodos({[weak self] (response) in
            guard let todos = response?.todos else {
                self?.presenter?.failedToGetTodos(response?.error?.nsError)
                return
            }
            self?.presenter?.gotTodos(todos)
            
            }) {[weak self] (response, data, error) in
                self?.presenter?.failedToGetTodos(error)
        }
    }
    
}
