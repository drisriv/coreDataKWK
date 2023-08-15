//
//  ToDoItem.swift
//  coreDataKWK
//
//  Created by Drishti Srivastava on 8/15/23.
//

import Foundation

class ToDoItem{
    var title : String
    var isImportant : Bool
    
    init(title: String, isImportant:Bool = false){
        self.title = title
        self.isImportant = isImportant
    }
}
