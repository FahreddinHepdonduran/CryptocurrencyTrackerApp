//
//  TopListRowView.swift
//  CryptocurrencyTrackerApp
//
//  Created by fahreddin on 5.02.2022.
//

import SwiftUI
import Kingfisher

struct TopListRowView: View {
    let model: CoinAssetModel
    let index: Int
    
    var body: some View {
        ZStack {
            LinearGradient(colors: index % 2 == 0 ? [Color("EvenNumberIndexColor1"),
                                                    Color("EvenNumberIndexColor2")
                                                    ] : [Color("OddNumberIndexColor1"),
                                                         Color("OddNumberIndexColor2"),
                                                         Color("OddNumberIndexColor3")],
                           startPoint: .top,
                           endPoint: .bottom)
            
            VStack {
                Spacer(minLength: 24.0)
                
                KFImage(model.iconUrlStringToUrl)
                    .resizable()
                    .frame(width: 56.0, height: 56.0)
                
                Spacer(minLength: 14.0)
                
                Text(model.name)
                    .font(.custom("Roboto", size: 16.0))
                    .fontWeight(.regular)
                    .tracking(0.15)
                    .foregroundColor(.black)
                
                Spacer(minLength: 23.0)
                
                Text(model.price)
                    .font(.custom("Roboto", size: 24.0))
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                
                Spacer(minLength: 45.0)
            }.frame(width: 315.0, height: 210.0)
        }
    }
}

struct TopListRowView_Previews: PreviewProvider {
    static var previews: some View {
        TopListRowView(
            model: CoinAssetModel(
                uuid: "BTC",
                symbol: "",
                name: "Bitcoin",
                iconUrl: "",
                price: ""
            ), index: 0
        )
            .previewLayout(
                .fixed(width: 315.0, height: 210.0)
            )
    }
}
