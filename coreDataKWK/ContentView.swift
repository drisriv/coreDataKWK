//
//  ContentView.swift
//  coreDataKWK
//
//  Created by Drishti Srivastava on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    @State var toDoItems: [ToDoItem] = []
    var body: some View {
        VStack{
            HStack{
                Text("To Do List")
                    .font(.system(size:40))
                    .fontWeight(.black)
                Spacer()
                Button(action: {
                    self.showNewTask = true
                }){
                Text("+")
                }
                .font(.system(size:30))
            }
            .padding()
            Spacer()
        }
        List{
            ForEach(toDoItems){
                toDoItem in
                if toDoItem.isImportant == true{
                    Text("!!"+toDoItem.title)
                } else{
                    Text(toDoItem.title)
                }
            }
        }.listStyle(.plain)
        if showNewTask{
            NewToDoView(title:"", isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
