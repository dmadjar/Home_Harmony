@_private(sourceFile: "AddFriendView.swift") import Home_Harmony
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension AddFriendView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/danielmadjar/Desktop/Projects/Home_Harmony/Home_Harmony/AddFriendView.swift", line: 17)
        NavigationStack {
            ScrollView {
                ForEach(viewModel.getUsers()) { user in 
                    HStack {
                        Image(systemName: __designTimeString("#17652.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "person.crop.circle"))
                            .resizable()
                            .frame(width: __designTimeInteger("#17652.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 30), height: __designTimeInteger("#17652.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 30))
                        
                        Text("\(user.name ?? __designTimeString("#17652.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[0].value.[1].value.arg[0].value.[0]", fallback: "First")) \(user.lastName ?? __designTimeString("#17652.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[0].value.[3].value.arg[0].value.[0]", fallback: "Last"))")
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Spacer()
                        
                        Button {
                            viewModel.addFriend(friend: user)
                        } label: {
                            Image(systemName: __designTimeString("#17652.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "plus.circle.fill"))
                                .resizable()
                                .frame(width: __designTimeInteger("#17652.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[1].arg[0].value", fallback: 30), height: __designTimeInteger("#17652.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[1].arg[1].value", fallback: 30))
                                .foregroundStyle(Color(.gree))
                        }
                    }
                    .padding()
                    .background(.thickMaterial)
                    .cornerRadius(__designTimeInteger("#17652.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 10))
                }
            }
        }
        .searchable(text: $search)
        
    
#sourceLocation()
    }
}

import struct Home_Harmony.AddFriendView
#Preview {
    AddFriendView(isAddingFriend: .constant(true))
}



