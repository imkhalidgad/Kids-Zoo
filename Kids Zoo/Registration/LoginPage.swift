//
//  LoginPage.swift
//  Kids Zoo
//
//  Created by Khalid Gad on 24/10/2024.
//

import SwiftUI

struct LoginPage: View {
    
    // property
    @State var userName: String = ""
    @State var password: String = ""
    
    @AppStorage("Paging") var paging: Int = 0
    
    @AppStorage("username") var accountUserName: String = ""
    @AppStorage("password") var accountPassworde: String = ""
    
    // body
    var body: some View {
        
        ZStack{
            Image("background1").resizable().scaledToFill()
            
            VStack{
                
                Spacer()
                
                TextField("User Name", text: $userName)
                    .padding()
                    .background(Color("AccentColor")).cornerRadius(12)
                    .padding(.horizontal, 30).padding(.vertical)
                
                TextField("Password", text: $password)
                    .padding()
                    .background(Color("AccentColor"))
                    .cornerRadius(12)
                    .padding(.horizontal, 30)
                
                HStack{
                    Spacer()
                    Text("Forgot Password?")
                        .padding(.top, 20).padding(.trailing, 35)

            }
      
                Button{
                     
                    if accountUserName == userName && accountPassworde == password{
                       
                        paging = 5
                        
                    }
                    
                    
                } label: {
                    Text("Go")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 250, height: 50, alignment: .center)
                        .background(Color("4thColor"))
                        .cornerRadius(12)
                        .padding(.top, 20)
                }
                
                HStack{
                    Text("Don't Have Account Yet !")
                    
                    Button{
                        
                        paging = 1
                        
                    } label: {
                        Text("Sign Up")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("4thColor"))
                    }
                    
                }.padding(.top, 20)
                
               
                    Image("background2").resizable().scaledToFit()
                
            }
            
            
        }.edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    LoginPage()
}
