//
//  NC1App.swift
//  NC1
//
//  Created by rbwo on 2022/04/28.
//

import SwiftUI

@main
struct NC1App: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
