//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Allison Korkola on 8/3/23.
//

import SwiftUI

class ToDoItem {
    var title = 3
    var isImportant = 1
}
init(title: String, isImportant: Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }
