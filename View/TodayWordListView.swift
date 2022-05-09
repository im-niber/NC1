//
//  TodayWordListView.swift
//  NC1
//
//  Created by rbwo on 2022/04/28.
//

import SwiftUI

struct TodayWordListView: View {
    @EnvironmentObject var modelData : ModelData
    
    @State private var chooseType = "All"
    @State private var isOpacity = true
    
    var body: some View {
        ZStack{
            BackgroundView()
            ScrollView {
                Divider()
                    .background(Color.white)
                ForEach(modelData.filterWord(typeword: chooseType)) {word in
                    RecordRow(isOpacity: $isOpacity ,words: word)
                }.navigationTitle("전체 단어 목록")
                    .toolbar {
                        ToolbarItem(placement: .automatic){
                        Menu(chooseType) {
                            Button("All") {
                                chooseType = "All"
                            }
                            Button("명사"){
                                chooseType = "명사"
                            }
                            Button("동사"){
                                chooseType = "동사"
                            }
                            Button("형용사") {
                                chooseType = "형용사"
                            }
                            Button("부사") {
                                chooseType = "부사"
                            }
                            Button("전치사") {
                                chooseType = "전치사"
                            }
                            Button("접속사") {
                                chooseType = "접속사"
                            }
                        }
                        .foregroundColor(Color.white)
                        .shadow(color: .black, radius: 10, x: 1, y: 3)
                        .padding()
                    }
                }
            }
        }
    }
}

struct TodayWordListView_Previews: PreviewProvider {
    static var previews: some View {
        TodayWordListView()
            .environmentObject(ModelData())
    }
}
