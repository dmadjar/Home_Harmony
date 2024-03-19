//
//  AddFriendView.swift
//  Home_Harmony
//
//  Created by Daniel Madjar on 3/18/24.
//

import SwiftUI

struct AddFriendView: View {
    @EnvironmentObject var viewModel: MainViewModel
    @Binding var isAddingFriend: Bool
    
    @State private var search: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    ForEach(viewModel.getUsers()) { user in
                        HStack {
                            Image(systemName: "person.crop.circle")
                                .resizable()
                                .frame(width: 30, height: 30)
                            
                            Text("\(user.name ?? "First") \(user.lastName ?? "Last")")
                                .font(.title2)
                                .fontWeight(.medium)
                            
                            Spacer()
                            
                            Button {
                                viewModel.addFriend(friend: user)
                            } label: {
                                Image(systemName: "plus.circle.fill")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundStyle(Color(.green))
                            }
                        }
                        .padding()
                        .background(.thickMaterial)
                        .cornerRadius(10)
                    }
                }
        
                Button {
                    self.isAddingFriend = false
                } label: {
                    Text("Done")
                }
            }
            .navigationTitle("Add Friends")
        }
        .searchable(text: $search)
    }
}

//#Preview {
//    AddFriendView(isAddingFriend: .constant(true))
//}
