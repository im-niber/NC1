//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by rbwo on 2022/04/05.
//

import SwiftUI

struct RecordRow: View {
    @EnvironmentObject var modelData: ModelData
    
    @Binding var isOpacity: Bool
    
    var words : Words
    
    var body: some View {
        ZStack{
            HStack{
                VStack(alignment: .leading, spacing: 20){
                    Text(words.title)
                        .font(.title3)
                        .foregroundColor(.white)
                        .fontWeight(.black)
                    
                    Text(words.means)
                        .font(.body)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    
                    Divider()
                        .background(Color.white)
                    
                }.padding()
               
                Spacer()
                
                Button {
                    modelData.deleteCheckedWord(word: words)
                } label: {
                    Image("multiply-1")
                        .padding()
                }
                .opacity(isOpacity ? 0.0 : 1.0)

            }
        }
       
    }
}
//
//struct LandmarkRow_Previews: PreviewProvider {
//    static var modelData = ModelData().wordData
//
//    static var previews: some View {
//        Group {
//            RecordRow(isOpacity: true, words: modelData[0])
//            RecordRow(words: modelData[1], isOpacity: true)
//
//        }
//        .previewLayout(.fixed(width: 300, height: 70))
//        .environmentObject(ModelData())
//    }
//}
