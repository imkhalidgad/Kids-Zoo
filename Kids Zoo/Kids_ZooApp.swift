//
//  Kids_ZooApp.swift
//  Kids Zoo
//
//  Created by Khalid Gad on 24/10/2024.
//

import SwiftUI

@main
struct Kids_ZooApp: App {
    
    // Proprty
    @AppStorage("Paging") var paging: Int = 0
    
    init() {
        paging = 0
    }
    
    // body
    var body: some Scene {
        WindowGroup {
            if paging == 0{
                LoginPage()
            } else if paging == 1 {
                SignUpPage()
            } else{
                mainView()
            }
        }
    }
}
