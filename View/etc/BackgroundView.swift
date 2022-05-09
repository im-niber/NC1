//
//  BackgroundView.swift
//  NC1
//
//  Created by rbwo on 2022/04/28.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(gradient:Gradient(colors: [Color(red: 104 / 255, green: 126 / 255, blue: 151 / 255),Color.black]), startPoint: .top, endPoint: .init(x: 0, y: 1.4))
            .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
