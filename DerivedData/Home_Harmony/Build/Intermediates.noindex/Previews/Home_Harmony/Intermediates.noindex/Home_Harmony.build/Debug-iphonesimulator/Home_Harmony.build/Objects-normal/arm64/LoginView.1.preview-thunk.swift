@_private(sourceFile: "LoginView.swift") import Home_Harmony
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension LoginView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/danielmadjar/Desktop/Projects/Home_Harmony/Home_Harmony/LoginView.swift", line: 18)
        VStack(spacing: __designTimeInteger("#1660.[1].[4].property.[0].[0].arg[0].value", fallback: 45)) {
            Text(__designTimeString("#1660.[1].[4].property.[0].[0].arg[1].value.[0].arg[0].value", fallback: "HomeHarmony"))
                .font(.largeTitle)
                .fontWeight(.black)
            
            TextField(__designTimeString("#1660.[1].[4].property.[0].[0].arg[1].value.[1].arg[0].value", fallback: "Email"), text: $email)
                
            
            SecureField(__designTimeString("#1660.[1].[4].property.[0].[0].arg[1].value.[2].arg[0].value", fallback: "Password"), text: $password)
                
            Button {
                viewModel.findUser(email: email, password: password)
                
                if (viewModel.user != nil) {
                    print(viewModel.user?.name ?? __designTimeString("#1660.[1].[4].property.[0].[0].arg[1].value.[3].arg[0].value.[1].[0].[0].arg[0].value.[0]", fallback: "Not Found"))
                }
            } label: {
                Text(__designTimeString("#1660.[1].[4].property.[0].[0].arg[1].value.[3].arg[1].value.[0].arg[0].value", fallback: "Login"))
            }
            
            Button {
                self.isCreatingAccount = __designTimeBoolean("#1660.[1].[4].property.[0].[0].arg[1].value.[4].arg[0].value.[0].[0]", fallback: true)
            } label: {
                Text(__designTimeString("#1660.[1].[4].property.[0].[0].arg[1].value.[4].arg[1].value.[0].arg[0].value", fallback: "Create Account"))
            }
        }
        .padding(.horizontal)
        .sheet(isPresented: $isCreatingAccount, content: {
            CreateAccount(isCreatingAccount: $isCreatingAccount)
        })
    
#sourceLocation()
    }
}

import struct Home_Harmony.LoginView
#Preview {
    LoginView()
}



