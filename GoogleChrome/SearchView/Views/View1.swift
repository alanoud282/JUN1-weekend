//
//  View1.swift
//  GoogleChrome
//
//  Created by ساره المرشد on 04/06/2023.
//


import SwiftUI

struct View1: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView {
            
            ZStack {
                
                LazyVGrid(columns: columns, spacing: 20) {
                    
                    
                    ForEach(allPlants , id: \.id){ plant in
                        VStack{
                            VStack(alignment: .center){
                             
                                RoundedRectangle(cornerRadius: 7)
                                    .fill(Color(hue: 1.0, saturation: 0.005, brightness: 0.93)).opacity(0.4)
                                    .frame(width: 55, height:55 )
                                
                                
                                    .overlay {
                                        Image( plant.imageName)
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                        
                                    }
                                
                                
                            }
                            
                            CardInfo(title: plant.title)
                        }
                        
                        
                    }
                    
                }
            }
            .padding(.horizontal ,35)
        } .navigationBarBackButtonHidden(true)
        
    }
}

struct View1_Previews: PreviewProvider {
    static var previews: some View {
        View1()
    }
}
