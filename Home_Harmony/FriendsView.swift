//
//  FriendsView.swift
//  Home_Harmony
//
//  Created by Daniel Madjar on 3/18/24.
//

import SwiftUI

struct FriendsView: View {
    @EnvironmentObject var viewModel: MainViewModel
    
    @State private var search: String = ""
    @State private var isAddingFriend: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(viewModel.friends) { friend in
                    HStack {
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        Text(friend.name ?? "First")
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Spacer()
                    }
                    .padding()
                    .background(.thickMaterial)
                    .cornerRadius(10)
                }
                .padding(.horizontal)
            }
            .navigationTitle("Friends")

        }
        .searchable(text: $search)
        .safeAreaInset(edge: .bottom) {
            Button {
                self.isAddingFriend = true
            } label: {
                Text("Add Friend")
            }
        }
        .sheet(isPresented: $isAddingFriend) {
            AddFriendView(isAddingFriend: $isAddingFriend)
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
