//
//  HomeButtonView.swift
//  NC1
//
//  Created by rbwo on 2022/04/28.
//

import SwiftUI

struct HomeButtonView: View {
    var body: some View {
        GeometryReader { geometry in
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color(red: 151 / 255, green: 151 / 255, blue: 151 / 255))
                .background(RoundedRectangle(cornerRadius: 30)
                .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 156 / 255, green: 156 / 255, blue: 156 / 255, opacity: 59 / 100), Color(red: 88 / 255, green: 88 / 255, blue: 88 / 255,opacity: 32 / 100)]), startPoint: .init(x: 0, y: 0.5), endPoint: .init(x: 0, y: 1))))
                .shadow(color: .black, radius: 10, x: 1, y: 3)
                .frame(width: geometry.size.width / 1.6, height: geometry.size.width / 1.6)
                .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
               
        }
    }
}

struct HomeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HomeButtonView()
    }
}
