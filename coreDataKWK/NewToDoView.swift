//
//  NewToDoView.swift
//  coreDataKWK
//
//  Created by Drishti Srivastava on 8/15/23.
//

import SwiftUI

struct NewToDoView: View {
    @State var title: String
    @State var isImportant: Bool
    @Binding var toDoItems: [ToDoItem]
    @Binding var showNewTask : Bool
    var body: some View {
        VStack{
            Text("Task Title:")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter the task description...", text:$title)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(20)
                .padding()
            Toggle(isOn: $isImportant){
                Text("Is it Important?")
                    .font(.title3)
            }
            .padding()
            Button(action: {
                self.addTask(title: self.title, isImportant: self.isImportant)
                self.showNewTask = false
            }){
                Text("Add")
                .font(.system(size:20))
            }
            .padding()
        }
    }
    private func addTask(title: String, isImportant: Bool = false){
        let task = ToDoItem(title: title, isImportant: isImportant)
        toDoItems.append(task)
    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title:"", isImportant: false, toDoItems: .constant([]), showNewTask: .constant(true))
    }
}
