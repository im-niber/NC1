//
//  RecordView.swift
//  NC1
//
//  Created by rbwo on 2022/04/28.
//

import SwiftUI

struct RecordView: View {
    @EnvironmentObject var modelData: ModelData
    
    @State private var isOpacity = false
    
    var body: some View {
        ZStack{
            BackgroundView()
            VStack(alignment: .leading){
                HStack{
                    Text("이때까지 틀린 내용을 \n복습 해 봅시다.")
                        .font(.title)
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .padding()
                    Spacer()
                }
                Divider()
                    .background(Color.white)
                
                ScrollView {
                    ForEach(Array(modelData.checkedData)) { word in
                        RecordRow(isOpacity: $isOpacity, words: word)
                    }
                }
                

                Spacer()
            }
        }
    }
}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView()
            .environmentObject(ModelData())
    }
}
