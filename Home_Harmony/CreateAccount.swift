//
//  CreateAccount.swift
//  Home_Harmony
//
//  Created by Daniel Madjar on 3/18/24.
//

import SwiftUI

struct CreateAccount: View {
    @EnvironmentObject var viewModel: MainViewModel
    @Binding var isCreatingAccount: Bool
    @State private var name: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 35) {
                Text("Create Account")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
                TextField("Email", text: $email)
                
                SecureField("Password", text: $password)
                
                TextField("First Name", text: $name)
                
                TextField("Last Name", text: $lastName)
            }
            .padding(.horizontal)
            
            Button {
                viewModel.addUser(
                    name: name,
                    lastName: lastName,
                    email: email,
                    password: password
                )
                
                self.isCreatingAccount = false
            } label: {
                Text("Create Account")
            }
        }
    }
}

struct CreateAccount_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccount(isCreatingAccount: .constant(true))
    }
}

//#Preview { 
//    CreateAccount()
//}
