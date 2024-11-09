//
//  MainViewTabBar.swift
//  Kids Zoo
//
//  Created by Khalid Gad on 24/10/2024.
//

import SwiftUI

struct MainViewTabBar: View {
    
    // Property
    @State var isSheetPresented = false
    @AppStorage("Paging") var paging: Int = 0
    
    // body
    var body: some View {
        HStack{
            Image("avatar")
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70, alignment: .center)
                .clipped()
                .cornerRadius(100)
                .padding(10)
            
            Spacer()
            
            Button{
            
                isSheetPresented = true
                
            } label: {
                Image(systemName: "slider.horizontal.3")
                    .resizable()
                    .foregroundColor(.white)
                    //.background()
                   // .cornerRadius(50)
                    .frame(width: 30, height: 30, alignment: .center)
                    
            }
            .padding(.trailing, 20)
        }
        .background(Color("AccentColor"))
        //.padding()
        .sheet(isPresented: $isSheetPresented) {
            
            Button {
                
                paging = 0
                
            } label: {
                Text("Log Out")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(width: 250, height: 50, alignment: .center)
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    
            }//.buttonStyle(.borderedProminent).buttonBorderShape(.capsule)
        }
            
    }
}

#Preview {
    MainViewTabBar()
}
