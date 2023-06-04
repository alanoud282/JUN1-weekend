//
//  CardInfo.swift
//  GoogleChrome
//
//  Created by ساره المرشد on 04/06/2023.
//

import SwiftUI
struct CardInfo: View {
    var title: String
  
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.caption)
                .multilineTextAlignment(.center)
              
         
        }.navigationBarBackButtonHidden(true)
    }
}

//
//struct CardInfo_Previews: PreviewProvider {
//    static var previews: some View {
//        CardInfo()
//    }
//}
