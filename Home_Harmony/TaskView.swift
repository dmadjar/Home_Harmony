//
//  TaskView.swift
//  Home_Harmony
//
//  Created by Daniel Madjar on 3/18/24.
//

import SwiftUI

struct TaskView: View {
    @EnvironmentObject var viewModel: MainViewModel
    
    @State private var isAddingTask: Bool = false
    
    let family: Family
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Tasks")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    ForEach(viewModel.getTasks(family: family)) { task in
                        VStack {
                            HStack {
                                Text(task.name ?? "Not Found")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                
                                Spacer()
                                
                                Text(task.creator?.name ?? "Assignee")
                                    .padding()
                                    .background(.thinMaterial)
                                    .cornerRadius(10)
                            }
                            
                            Text(task.taskInfo ?? "Not Found")
                        }
                        .padding()
                        .background(.thickMaterial)
                        .cornerRadius(10)
                    }
                    
                    Text("Members")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    ForEach(viewModel.getMembers(family: family)) { member in
                        HStack {
                            Image(systemName: "person.crop.circle")
                                .resizable()
                                .frame(width: 30, height: 30)
                            
                            Text(member.name ?? "First")
                                .font(.title2)
                                .fontWeight(.medium)
                            
                            Spacer()
                        }
                        .padding()
                        .background(.thickMaterial)
                        .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
            }
            .safeAreaInset(edge: .bottom) {
                Button {
                    self.isAddingTask = true
                } label: {
                    Text("Add Task")
                }
            }
            .sheet(isPresented: $isAddingTask, content: {
                AddTaskView(isAddingTask: $isAddingTask, family: family)
            })
        }
    }
}

//#Preview {
//    TaskView()
//}
