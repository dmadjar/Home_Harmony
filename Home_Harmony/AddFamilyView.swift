//
//  AddFamilyView.swift
//  Home_Harmony
//
//  Created by Daniel Madjar on 3/18/24.
//

import SwiftUI

struct AddFamilyView: View {
    @EnvironmentObject var viewModel: MainViewModel
    @Binding var isAddingFamily: Bool
    @State private var familyName: String = ""
    @State private var members: Set<User> = []
    
    var body: some View {
        VStack {
            Text("Create Family")
                .font(.title2)
                .fontWeight(.medium)
            
            TextField("Family Name", text: $familyName)
            
            HStack {
                Menu("Add Members") {
                    ForEach(viewModel.friends) { friend in
                        Button {
                            members.insert(friend)
                        } label: {
                            Text("\(friend.name ?? "Not Found") \(friend.lastName ?? "Not Found")")
                                .font(.title2)
                                .fontWeight(.bold)
                        }
                    }
                }
            }
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(Array(members)) { member in
                        Text(member.name ?? "Not Found")
                            .padding()
                            .background(.thickMaterial)
                            .cornerRadius(10)
                    }
                }
            }
            
            Button {
                viewModel.addFamily(name: familyName, members: members)
                self.isAddingFamily = false
            } label: {
                Text("Done")
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    AddFamilyView(isAddingFamily: .constant(true))
}
