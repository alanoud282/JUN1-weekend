//
//  View2.swift
//  GoogleChrome
//
//  Created by ساره المرشد on 04/06/2023.
//

import SwiftUI

struct View2: View {
    var body: some View {
        VStack{
            VStack(alignment: .center){
                
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(hue: 1.0, saturation: 0.002, brightness: 0.912) , lineWidth: 1)
                    .frame(width: 350, height:200 )
                    .overlay {
                       
                        Button("Hide") {
                            
                        }
                        .padding(.leading ,300)
                        .padding(.bottom, 150.0)
                        
                        Text("articles for you".uppercased())
                            .font(.caption2)
                            .foregroundColor(Color.gray)
                            .padding(.bottom ,150)
                            .padding(.trailing ,230)
                        HStack{
                            Text("How to Choose a Programming Language for Your Machine Learning Project?")
                                .fontWeight(.semibold)
                            
                            Image("1*tTWbDMTYQUs1OB47jJojNQ")
                                .resizable()
                                .frame(width: 150, height: 100)
                            
                            
                        }
                    }
                   
            }
        }
    }
}

struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View2()
    }
}
