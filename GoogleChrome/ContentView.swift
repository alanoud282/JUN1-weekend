//
//  ContentView.swift
//  GoogleChrome
//
//  Created by ساره المرشد on 03/06/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        
        
        ZStack{
            
            
            if isActive {
                Search()
            } else {
                
                VStack {
                    
                    VStack {
                        
                        Image("Google_Chrome_icon_(February_2022).svg")
                            .resizable()
                            .frame(width: 110.0, height: 110)
                        .padding(.top ,300)
                        Spacer()
                        Text("Google")
                            .font(.largeTitle)
                            .foregroundColor(Color.gray)
                           
                            
                    }
                    // .scaleEffect(size)
                    
                    .opacity(opacity)

                    .onAppear { withAnimation(.easeIn(duration: 4)) {
                        //self.size = 0.9
                        self.opacity = 6.0
                    }
                    }
                }
                
                
                .onAppear { DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) { self.isActive = true
                }
                }
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
