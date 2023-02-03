//
//  InfoView.swift
//  NC1
//
//  Created by rbwo on 2022/04/28.
//

import SwiftUI
import SwiftUICharts

struct InfoView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ZStack{
            BackgroundView()
                VStack {
                Spacer()
                Text("현재 니버님의 실력은 ?")
                    .font(.title)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
                    
                    BarChartView(data: ChartData(values: modelData.typeWords), title: "", legend: "Just Do it !", style: .init(backgroundColor: .clear, accentColor: .white, gradientColor: GradientColors.green, textColor: .white, legendTextColor: .white, dropShadowColor: .brown), dropShadow: true, animatedToBack: true)
                                 
                    Spacer()
                }
        }
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
            .environmentObject(ModelData())
    }
}
