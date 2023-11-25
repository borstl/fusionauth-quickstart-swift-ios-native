//
//  AppSettingsReader.swift
//  ChangeBank
//
//  Created by Bradley Van Aardt on 2023/11/24.
//

import Foundation


struct AppSettingsRoot : Decodable {
    internal let authCredentials : AuthCredentials
}

struct AuthCredentials : Decodable {
    internal let clientId : String
    internal let issuer : String
}


class AppSettingsReader {
    
    func loadAppSettings() -> AppSettingsRoot {
        let url = Bundle.main.url(forResource: "ChangeBank", withExtension:"plist")!
        let data = try! Data(contentsOf: url)
        let appSettings = try! PropertyListDecoder().decode(AppSettingsRoot.self, from: data)
        return appSettings
    }
}
