//
//  Modules.swift
//  TooDoApp
//
//  Created by admin on 23/09/16.
//  Copyright © 2016 com.ios. All rights reserved.
//

import Foundation

public enum Module{

    case ToDoList
    
    public var routePath: String {
        switch self
        {
        case .ToDoList:
            return "/Modules/ToDoList"
        }
    }

}