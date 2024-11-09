//
//  mainView.swift
//  Kids Zoo
//
//  Created by Khalid Gad on 24/10/2024.
//

import SwiftUI

struct mainView: View {
    
    // Proprty
    @AppStorage("Paging") var paging: Int = 0
    
    var gridLayoutColumns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var animalsArrayImg: [String] = ["cat", "fox", "lion", "rakoon", "shark", "tiger"]
    
    
    // body
    var body: some View {
        
        ZStack {
            Color("2ndColor")
            VStack {
                MainViewTabBar()
                    .padding(.top, 60)
                
                MatchedItemView()
                    .padding(.top, 40)
                
              //  Spacer()
                
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    mainView()
}
