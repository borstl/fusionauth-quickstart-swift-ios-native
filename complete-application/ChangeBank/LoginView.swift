//
//  LoginView.swift
//  ChangeBank
//
//  Created by Bradley Van Aardt on 2023/11/21.
//

import SwiftUI
import AppAuth



struct LoginView: View {
    @EnvironmentObject var userAuth: UserAuth
    var body: some View {
        VStack {
            Image("changebank")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text("Welcome to ChangeBank!")
            Button("Login"){
                userAuth.login()
            }.buttonStyle(PrimaryButtonStyle())
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
