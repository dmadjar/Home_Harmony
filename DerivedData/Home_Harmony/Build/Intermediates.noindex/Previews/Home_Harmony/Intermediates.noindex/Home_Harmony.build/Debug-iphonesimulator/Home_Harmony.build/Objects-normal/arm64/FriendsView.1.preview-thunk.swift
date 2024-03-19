@_private(sourceFile: "FriendsView.swift") import Home_Harmony
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension FriendsView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/danielmadjar/Desktop/Projects/Home_Harmony/Home_Harmony/FriendsView.swift", line: 56)
        FriendsView()
    
#sourceLocation()
    }
}

extension FriendsView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/danielmadjar/Desktop/Projects/Home_Harmony/Home_Harmony/FriendsView.swift", line: 17)
        NavigationStack {
            ScrollView {
                ForEach(viewModel.findFriends(), id: \.self) { friend in
                    HStack {
                        Image(systemName: __designTimeString("#11424.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].arg[0].value", fallback: "person.crop.circle"))
                            .resizable()
                            .frame(width: __designTimeInteger("#11424.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 30), height: __designTimeInteger("#11424.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 30))
                        
                        Text(friend.name ?? __designTimeString("#11424.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[0].value.[1].arg[0].value.[0]", fallback: "First"))
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Spacer()
                    }
                    .padding()
                    .background(.thickMaterial)
                    .cornerRadius(__designTimeInteger("#11424.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].modifier[2].arg[0].value", fallback: 10))
                }
                .padding(.horizontal)
            }
            .navigationTitle(__designTimeString("#11424.[1].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: "Friends"))

        }
        .searchable(text: $search)
        .safeAreaInset(edge: .bottom) {
            Button {
                self.isAddingFriend = __designTimeBoolean("#11424.[1].[3].property.[0].[0].modifier[1].arg[1].value.[0].arg[0].value.[0].[0]", fallback: true)
            } label: {
                Text(__designTimeString("#11424.[1].[3].property.[0].[0].modifier[1].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "Add Friend"))
            }
        }
        .sheet(isPresented: $isAddingFriend) {
            AddFriendView(isAddingFriend: $isAddingFriend)
        }
    
#sourceLocation()
    }
}

import struct Home_Harmony.FriendsView
import struct Home_Harmony.FriendsView_Previews

