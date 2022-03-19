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
    
    var body: some View {
        ZStack {
            Color("TopListRowBackgroundColor")
            
            VStack {
                Spacer(minLength: 24.0)
                
                KFImage(URL(string: model.iconUrl)!)
                    .resizable()
                    .frame(width: 56.0, height: 56.0)
                
                Spacer(minLength: 14.0)
                
                Text(model.name)
                    .font(.custom("Roboto", size: 16.0))
                    .foregroundColor(.white)
                
                Spacer(minLength: 23.0)
                
                Text(model.price)
                    .font(.custom("Roboto", size: 16.0))
                    .foregroundColor(.white)
                
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
            )
        )
            .previewLayout(
                .fixed(width: 315.0, height: 210.0)
            )
    }
}
