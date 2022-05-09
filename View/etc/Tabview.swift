//
//  Tabview.swift
//  NC1
//
//  Created by rbwo on 2022/04/28.
//

import SwiftUI

struct Tabview: View {
    
    var body: some View {
        GeometryReader { geometry in
            TabView {
                NavigationView{
                    HomeView()
                        .navigationBarHidden(true)
                }
                .tabItem {
                    Image(systemName: "house.fill")
                }
                NavigationView{
                    RecordView()
                        .navigationBarHidden(true)
                }
                .tabItem {
                    Image(systemName: "books.vertical.fill")
                }
                
                InfoView()
                    .tabItem {
                        Image(systemName: "person.fill")
                    }
                
            }.accentColor(.white)
        }
        
    }
}

struct Tabview_Previews: PreviewProvider {
    static var previews: some View {
        Tabview()
    }
}
