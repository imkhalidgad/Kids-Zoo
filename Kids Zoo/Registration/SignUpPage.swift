//
//  SignUpPage.swift
//  Kids Zoo
//
//  Created by Khalid Gad on 24/10/2024.
//

import SwiftUI

struct SignUpPage: View {
    
    // Property
    @State var userName: String = ""
    @State var password: String = ""
    @State var country: String = ""
    @State var childAge: String = ""
    
    @AppStorage("Paging") var paging: Int = 0
    
    @AppStorage("username") var accountUserName: String = ""
    @AppStorage("password") var accountPassworde: String = ""
    
    // body
    var body: some View {
        ZStack{
            Image("background1")
                .resizable()
                .scaledToFill()
            VStack{
                TextField("UserName", text: $userName)
                    .padding()
                    .background(Color("AccentColor"))
                    .cornerRadius(12)
                    .padding(.horizontal, 30)
                    .padding(.bottom, 20)
                
                TextField("Password", text: $password)
                    .padding()
                    .background(Color("AccentColor"))
                    .cornerRadius(12)
                    .padding(.horizontal, 30)
                    .padding(.bottom, 20)
                
                TextField("Country", text: $country)
                    .padding()
                    .background(Color("AccentColor"))
                    .cornerRadius(12)
                    .padding(.horizontal, 30)
                    .padding(.bottom, 20)
                
                TextField("Age", text: $childAge)
                    .padding()
                    .background(Color("AccentColor"))
                    .cornerRadius(12)
                    .padding(.horizontal, 30)
                    .padding(.bottom, 20)
                
                Button{
                    
                    if userName != "" && password != "" {
                        
                        accountUserName = userName
                        accountPassworde = password
                        
                        paging = 0
                        
                    }
                    
                }label: {
                    Text("Sign Up")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 250, height: 50, alignment: .center)
                        .background(Color("4thColor"))
                        .cornerRadius(12)
                        .padding(.top, 20)
                }
            }
            
        }.edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    SignUpPage()
}
