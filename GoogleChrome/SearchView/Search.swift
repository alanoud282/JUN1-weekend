import SwiftUI

struct Search: View {
    @State private var selectedTab: Int = 0
    init() {
        let customColor = UIColor(.gray)
        
        UITabBar.appearance().unselectedItemTintColor = customColor
    }
    var body: some View {
        ZStack {
          
            TabView {
                Search1()
                    .tabItem {
                        Image(systemName: "arrow.left")
                            .renderingMode(.template)
                            .font(.system(size: 24))
                    }
                        
                Search1()
                            .tabItem {
                                Image(systemName: "arrow.right")
                                    .renderingMode(.template)
                                   
                                    .font(.system(size: 24))
                                
                            }
                        Search1()
                            .tabItem {
                                Image(systemName: "plus.circle")
                                    .renderingMode(.template)
                                    .font(.system(size: 24))
                            }
                        Pages1()
                            .tabItem {
                                Image(systemName: "square")
                                    .renderingMode(.template)
                                    .font(.system(size: 24))
                                
                                
                            }
                Search1()
                            .tabItem {
                                Image(systemName: "ellipsis")
                                    .renderingMode(.template)
                                    .font(.system(size: 24))
                                
                                
                                
                                
                            }
                            .accentColor(.gray)
                    
            }
        }
    }
}






struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
