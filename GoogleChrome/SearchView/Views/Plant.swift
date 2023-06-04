//
//  Plant.swift
//  GoogleChrome
//
//  Created by ساره المرشد on 04/06/2023.
//

import SwiftUI

struct Plant:Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
 
  
}


var plant1 = Plant(imageName: "Facebook_icon.svg", title: "Fecebook")
var plant2 = Plant(imageName: "YouTube_social_white_squircle.svg", title: "YouTube")
var plant3 = Plant(imageName: "Amazon_icon.svg", title: "Amazone")
var plant4 = Plant(imageName: "OOjs_UI_icon_logo-wikipedia.svg", title: "Wikipedia")
var plant5 = Plant(imageName:  "png-blue-star-11659043933p7utlp9tu0" , title: "Bookmarks")
var plant6 = Plant(imageName: "4355387", title: "Reading List")
var plant7 = Plant(imageName: "9027311_laptop_icon", title: "Recent tabs")
var plant8 = Plant(imageName: "275-2751782_go-to-timeline-link-history-icon-design", title: "History")

var allPlants = [plant1,plant2,plant3,plant4 ,plant5 , plant6 ,plant7 , plant8]

//struct Plant_Previews: PreviewProvider {
//    static var previews: some View {
//        Plant()
//    }
//}
