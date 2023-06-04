//
//  Search1.swift
//  GoogleChrome
//
//  Created by ساره المرشد on 04/06/2023.
//

import SwiftUI

struct Search1: View {
    @State private var searchText = ""

    var body: some View {
     
            NavigationView{
                ScrollView {
                ZStack{
                    VStack(spacing: 22.0){
                        HStack{
                            Image(systemName: "m.circle.fill")
                                .foregroundColor(Color.orange)
                                .font(.system(size: 37))
                            
                        }
                        .padding(.leading ,300)
                        Spacer()
                       
                        VStack(spacing: 50.0) {
                        Image("Google_2015_logo.svg")
                            .resizable()
                            .frame(width: 190, height: 70)
                        
                        
                            
                            NavigationLink(destination: RealSearch()){
                                SearchBar(text: $searchText)
                            }
      
                        }
                        View1()
                        View2()
                    }
                }
            }
        }
    }
}
       
    struct SearchBar: UIViewRepresentable {
        @Binding var text: String

        class Coordinator: NSObject, UISearchBarDelegate {
            @Binding var text: String

            init(text: Binding<String>) {
                _text = text
            }

            func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
                text = searchText
            }

            func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
                searchBar.resignFirstResponder()
            }
        }

        func makeCoordinator() -> Coordinator {
            return Coordinator(text: $text)
        }

        func makeUIView(context: Context) -> UISearchBar {
            let searchBar = UISearchBar(frame: .zero)
            searchBar.delegate = context.coordinator
            return searchBar
        }

        func updateUIView(_ uiView: UISearchBar, context: Context) {
            uiView.text = text
        }
    }


    

struct Search1_Previews: PreviewProvider {
    static var previews: some View {
        Search1()
    }
}
