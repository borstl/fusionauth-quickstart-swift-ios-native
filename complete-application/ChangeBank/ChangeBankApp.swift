//
//  Change_BankApp.swift
//  Change Bank
//
//  Created by Bradley Van Aardt on 2023/11/10.
//

import SwiftUI

@main
struct ChangeBankApp: App {
    var userAuth = UserAuth()
    var body: some Scene {
    
        WindowGroup {
            ContentView()
                .environmentObject(userAuth)
        }
    }
}
