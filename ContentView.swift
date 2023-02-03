//
//  ContentView.swift
//  NC1
//
//  Created by rbwo on 2022/04/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Tabview()
    }
}

struct ContentView_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
