//
//  QuizView.swift
//  NC1
//
//  Created by rbwo on 2022/04/28.
//

import SwiftUI

struct QuizView: View {
    @EnvironmentObject var modelData : ModelData

    @State private var answerCount: Int = 0
    @State private var circleOpacity: Bool = true
    @State private var xOpacity: Bool = true
    
    var body: some View {
        ZStack{
            BackgroundView()
            GeometryReader { geometry in
                    Text("Vocabulary Test")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.25)
                        .ignoresSafeArea()
                
                    
                QuizButtonView(randoms: $modelData.randomData, wordDataa: $modelData.wordData)
                        .frame(width: geometry.size.width / 1.1, height: geometry.size.height / 3.5)
                        .position(x: geometry.size.width / 2, y: geometry.size.height / 2.6)
                        .ignoresSafeArea()
                
                    ZStack{
                        Image("o")
                            .resizable().frame(width: 200, height: 200)
                            .aspectRatio(contentMode: .fit)
                            .opacity(circleOpacity ? 0.0 : 1)
                            .position(x: geometry.size.width / 2, y: geometry.size.height / 2.6)
                            .ignoresSafeArea()
                        
                        Image("x")
                            .resizable().frame(width: 200, height: 200)
                            .aspectRatio(contentMode: .fit)
                            .opacity(xOpacity ? 0.0 : 1)
                            .position(x: geometry.size.width / 2, y: geometry.size.height / 2.6)
                            .ignoresSafeArea()
                    }
                    
                  
                        VStack(spacing: 12){
                                ForEach(modelData.randomData.shuffled(), id: \.self) { i in
                                    Button(action: {
                                        if i == modelData.randomData[0] {
                                            circleOpacity.toggle()
                                            answerCount += 1
                                            print(answerCount)
                                            
                                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.44) {
                                                circleOpacity.toggle()
                                                modelData.randomCreate()
                                                modelData.updateStatus(typeword: modelData.wordData[i].type)
                                            }
                                        } else {
                                            xOpacity.toggle()
                                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.44) {
                                                xOpacity.toggle()
                                                modelData.randomCreate()
                                                modelData.checkedWord(word: modelData.wordData[modelData.randomData[0]])
                                                print("byebye")
                                            }
                                        }
                                    }) {
                                        QuizAnsButtonView(randoms: i)
                                            .frame(width: geometry.size.width / 1.1, height: geometry.size.height / 10)
                                            .scenePadding()
                                            
                                    }
                                        
                                }
                            }
                            .frame(width: geometry.size.width, height: geometry.size.height / 10)
                            .position(x: geometry.size.width / 2, y: geometry.size.height / 1.14)
                            .ignoresSafeArea()
                    
                }
        }.navigationTitle(" ")
    }
}
