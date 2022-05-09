//
//  QuizAnsButtonView.swift
//  NC1
//
//  Created by rbwo on 2022/04/29.
//

import SwiftUI

struct QuizAnsButtonView: View {
    @EnvironmentObject var modelData : ModelData
    var randoms: Int
    
    
    var body: some View {
            ZStack{
                RoundedRectangle(cornerRadius: 13)
                    .stroke(Color(red: 151 / 255, green: 151 / 255, blue: 151 / 255))
                    .background(RoundedRectangle(cornerRadius: 13)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 156 / 255, green: 156 / 255, blue: 156 / 255, opacity: 59 / 100), Color(red: 88 / 255, green: 88 / 255, blue: 88 / 255, opacity: 0.5)]), startPoint: .init(x: 0, y: 0.5), endPoint: .init(x: 0, y: 1))))
                    .shadow(color: .black, radius: 10, x: 1, y: 3)
                
                
                Text(modelData.wordData[randoms].means)
                    .font(.footnote)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
           
        
    }
}

struct QuizAnsButtonView_Previews: PreviewProvider {

    static var previews: some View {
        QuizAnsButtonView(randoms: 0)
            .environmentObject(ModelData())
    }
}
