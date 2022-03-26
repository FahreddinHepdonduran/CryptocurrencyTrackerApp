//
//  BottomListRowView.swift
//  CryptocurrencyTrackerApp
//
//  Created by fahreddin on 6.02.2022.
//

import SwiftUI
import Kingfisher

struct BottomListRowView: View {
    let model: CoinAssetModel
    
    var body: some View {
        HStack {
            KFImage(model.iconUrlStringToUrl)
                .resizable()
                .frame(width: 46.0, height: 46.0)
                .padding(.leading, 16.0)
            
            Spacer(minLength: 22.0)
            
            Text(model.symbol)
                .font(.custom("Roboto", size: 16.0))
                .fontWeight(.regular)
                .tracking(0.15)
                .foregroundColor(.white)
            
            Spacer(minLength: 71.0)
            
            Text("\(model.roundedPrice) $")
                .font(.custom("Roboto", size: 16.0))
                .fontWeight(.semibold)
                .tracking(0.15)
                .foregroundColor(.white)
                .minimumScaleFactor(0.5)
                .lineLimit(1)
                .multilineTextAlignment(.trailing)
        }.frame(width: 317.0, height: 77.0)
    }
}

struct BottomListRowView_Previews: PreviewProvider {
    static var previews: some View {
        BottomListRowView(
            model: CoinAssetModel(
                uuid: "BTC",
                symbol: "",
                name: "Bitcoin",
                iconUrl: "",
                price: ""
            )
        ).previewLayout(
            .fixed(width: 317.0, height: 77.0)
        )
    }
}
