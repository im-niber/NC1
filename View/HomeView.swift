//
//  HomeView.swift
//  NC1
//
//  Created by rbwo on 2022/04/28.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var modelData : ModelData
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack{
                Text("hide")
                    .font(.title)
                    .hidden()
                
                Text("A-zit Vocabulary")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
            
                Text("hi")
                    .font(.title)
                    .hidden()
            

                NavigationLink(destination: QuizView()) {
                    ZStack{
                        HomeButtonView()
                        Text("Quiz Start")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                    }.navigationBarTitle(" ")
                }

                Spacer()
                    NavigationLink(destination: TodayWordListView()) {
                        ZStack{
                            HomeButtonView()
                            Text("Word List")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                        }
                    }.navigationTitle("Test")
                Spacer()
            }
        }
            .onAppear {
                modelData.randomCreate()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()

    }
}
