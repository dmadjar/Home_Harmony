//
//  TaskView.swift
//  Home_Harmony
//
//  Created by Daniel Madjar on 3/18/24.
//

import SwiftUI

struct FamilyView: View {
    @EnvironmentObject var viewModel: MainViewModel
    
    @State private var isAddingFamily: Bool = false
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(viewModel.families) { family in
                    NavigationLink {
                        TaskView(family: family)
                    } label: {
                        HStack {
                            Image(systemName: "house")
                                .resizable()
                                .frame(width: 30, height: 30)
                            
                            Text(family.name ?? "First")
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
            .navigationTitle("Families")
            .safeAreaInset(edge: .bottom) {
                Button {
                    self.isAddingFamily = true
                } label: {
                    Text("Add Family")
                }
            }
            .sheet(isPresented: $isAddingFamily, content: {
                AddFamilyView(isAddingFamily: $isAddingFamily)
            })
        }
    }
}

#Preview {
    FamilyView()
}
