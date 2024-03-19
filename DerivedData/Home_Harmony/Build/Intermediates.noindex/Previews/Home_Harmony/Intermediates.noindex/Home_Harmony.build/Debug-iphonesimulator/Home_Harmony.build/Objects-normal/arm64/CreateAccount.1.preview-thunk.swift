@_private(sourceFile: "CreateAccount.swift") import Home_Harmony
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension CreateAccount_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/danielmadjar/Desktop/Projects/Home_Harmony/Home_Harmony/CreateAccount.swift", line: 53)
        CreateAccount(isCreatingAccount: .constant(__designTimeBoolean("#4363.[2].[0].property.[0].[0].arg[0].value.arg[0].value", fallback: true)))
    
#sourceLocation()
    }
}

extension CreateAccount {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/danielmadjar/Desktop/Projects/Home_Harmony/Home_Harmony/CreateAccount.swift", line: 19)
        VStack {
            VStack(alignment: .leading, spacing: __designTimeInteger("#4363.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value", fallback: 35)) {
                Text(__designTimeString("#4363.[1].[6].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[0].value", fallback: "Create Account"))
                    .font(.largeTitle)
                    .fontWeight(.black)
                
                TextField(__designTimeString("#4363.[1].[6].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value", fallback: "Email"), text: $email)
                
                SecureField(__designTimeString("#4363.[1].[6].property.[0].[0].arg[0].value.[0].arg[2].value.[2].arg[0].value", fallback: "Password"), text: $password)
                
                TextField(__designTimeString("#4363.[1].[6].property.[0].[0].arg[0].value.[0].arg[2].value.[3].arg[0].value", fallback: "First Name"), text: $name)
                
                TextField(__designTimeString("#4363.[1].[6].property.[0].[0].arg[0].value.[0].arg[2].value.[4].arg[0].value", fallback: "Last Name"), text: $lastName)
            }
            .padding(.horizontal)
            
            Button {
                viewModel.addUser(
                    name: name,
                    lastName: lastName,
                    email: email,
                    password: password
                )
                
                self.isCreatingAccount = __designTimeBoolean("#4363.[1].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].[0]", fallback: false)
            } label: {
                Text(__designTimeString("#4363.[1].[6].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Create Account"))
            }
        }
    
#sourceLocation()
    }
}

import struct Home_Harmony.CreateAccount
import struct Home_Harmony.CreateAccount_Previews

