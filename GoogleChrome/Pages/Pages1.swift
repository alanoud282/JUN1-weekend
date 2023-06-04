//
//  Pages1.swift
//  GoogleChrome
//
//  Created by ساره المرشد on 04/06/2023.
//

import SwiftUI

struct Pages1: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    @State var pageCount = 1
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
          
                
            ScrollView{
                HStack{
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(1..<pageCount+1, id: \.self) { page in
                            PageView1(page: page)
                        }
                    }
                }
                .padding(.top ,80)
            }
            VStack {
            HStack(spacing: 10.0) {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                    .frame(width: 70, height:40 )
                    .overlay(
                        Text("\(pageCount)")
                   )
                    .overlay(
                        Image(systemName: "square")
                            .resizable()
.frame(width: 25.0, height: 25)
                    )
            }
           
                Spacer()
                HStack(spacing: 80.0){
                    Button(action: {
                        pageCount = 1
                    }) {
                        Text("Close All")
                            .foregroundColor(Color.white)
                    }
                    Button(action: {
                        pageCount += 1
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(Color(hue: 0.589, saturation: 0.513, brightness: 0.983))
                    }
                    Button(action: {
                        pageCount = 1
                    }) {
                        Text("Done")
                            .foregroundColor(Color.white)
                    }
                }
            }
        }
    }
}

struct PageView1: View {
    var page: Int
    
    var body: some View {
        HStack(spacing: 10.0){
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(hue: 0.589, saturation: 0.513, brightness: 0.983) , lineWidth: 7)
                .frame(width: 180, height:260 )
                .overlay(Search1()
                            .frame(width: 170, height: 249))
                .padding(.bottom ,10)
        }
    }
}

struct Pages1_Previews: PreviewProvider {
    static var previews: some View {
        Pages1()
    }
}
