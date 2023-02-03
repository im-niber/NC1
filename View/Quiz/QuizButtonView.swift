//
//  QuizButtonView.swift
//  NC1
//
//  Created by rbwo on 2022/04/29.
//

import SwiftUI

struct QuizButtonView: View {
    @Binding var randoms: Array<Int>
    @Binding var wordDataa: Array<Words>
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color(red: 151 / 255, green: 151 / 255, blue: 151 / 255))
                .background(RoundedRectangle(cornerRadius:30).fill(LinearGradient(gradient:Gradient(colors: [Color(red: 104 / 255, green: 126 / 255, blue: 151 / 255, opacity: 0.34), Color.black]), startPoint: .top, endPoint: .init(x: 0, y: 1.4))))
                .ignoresSafeArea()
                .shadow(color: .black, radius: 10, x: 1, y: 3)
            
            Text(wordDataa[randoms[0]].title)
                .font(.title3)
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }
        
    }
}
