//
//  MatchedItemView.swift
//  Kids Zoo
//
//  Created by Khalid Gad on 24/10/2024.
//

import SwiftUI

struct MatchedItemView: View {
    
    // Property
    
    var gridLayoutColumns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State var animalsArrayImg: [String] = [
        "cat", "fox", "lion", "rakoon", "shark", "tiger",
        "cat", "fox", "lion", "rakoon", "shark", "tiger"
    ]
    
    @State var arrayOfTappedItem: [Int] = []
    @State var arrayOfAllCorrectItem: [Int] = []
    
    init(){
        animalsArrayImg.shuffle()
    }
    
    // body
    var body: some View {
        LazyVGrid(columns: gridLayoutColumns){
            ForEach(0..<animalsArrayImg.count){ index in
                Image(animalsArrayImg[index])
                    .resizable()
                    .scaledToFill()
                    .padding(10)
                    .background(Color("AccentColor"))
                    .frame(width: 100, height: 100, alignment: .center)
                    .cornerRadius(50)
                    
                    .overlay(Color("AccentColor").cornerRadius(50)
                        .opacity(!arrayOfTappedItem.contains(index)
                                 &&
                                 !arrayOfAllCorrectItem.contains(index) ? 1 : 0
                                )

                            .onTapGesture {
                                if arrayOfTappedItem.count < 3 {
                                    arrayOfTappedItem.append(index)
                                    
                                    if arrayOfTappedItem.count > 1 {
                                        
                                        if animalsArrayImg[arrayOfTappedItem[0]] == animalsArrayImg[arrayOfTappedItem[1]]
                                        && arrayOfTappedItem[0] != 1 {
                                            
                                            arrayOfAllCorrectItem.append(contentsOf: arrayOfTappedItem)
                                            
                                            arrayOfTappedItem = []
                                            
                                            if arrayOfAllCorrectItem.count == animalsArrayImg.count {
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                                    arrayOfTappedItem=[]
                                                    arrayOfAllCorrectItem=[]
                                                    self.animalsArrayImg.shuffle()
                                                }
                                                
                                            }
                                            
                                        } else{
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                                arrayOfTappedItem=[]
                                                
                                            }
                                           
                                        }
                                        
                                    }

                                }
                                
                            }
                        )
                
            }.padding(.top, 20)
        }.padding(.top, 20)
        Spacer()
    }
}

#Preview {
    MatchedItemView()
}
