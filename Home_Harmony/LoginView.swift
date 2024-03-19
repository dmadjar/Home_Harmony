//
//  ContentView.swift
//  Home_Harmony
//
//  Created by Daniel Madjar on 3/18/24.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var viewModel: MainViewModel
    
    @State var isCreatingAccount: Bool = false
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(spacing: 45) {
            Text("HomeHarmony")
                .font(.largeTitle)
                .fontWeight(.black)
            
            TextField("Email", text: $email)
                
            
            SecureField("Password", text: $password)
                
            Button {
                viewModel.findUser(email: email, password: password)
                
                if (viewModel.user != nil) {
                    viewModel.appStateSelection = 1
                }
            } label: {
                Text("Login")
            }
            
            Button {
                self.isCreatingAccount = true
            } label: {
                Text("Create Account")
            }
        }
        .padding(.horizontal)
        .sheet(isPresented: $isCreatingAccount, content: {
            CreateAccount(isCreatingAccount: $isCreatingAccount)
        })
    }
}

#Preview {
    LoginView()
}
