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
                
            }){
                Text("Add")
                .font(.system(size:20))
            }
            .padding()
        }
    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title:"", isImportant: false)
    }
}
