//
//  ContentView.swift
//  CryptocurrencyTrackerApp
//
//  Created by fahreddin on 4.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors:
                    [
                        Color("GradientBackgroundColor1"),
                        Color("GradientBackgroundColor2")
                    ],
                startPoint: .top,
                endPoint: .bottom
            ).edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer(minLength: 71.0)
                
                ScrollView(.horizontal) {
                    HStack(spacing: 14.0) {
                        ForEach(0..<10) { _ in
                            TopListRowView(
                                model: CoinAssetModel(
                                    assetId: "BTC",
                                    name: "Bitcoin",
                                    typeIsCrypto: true,
                                    priceUSD: 4.0
                                )
                            ).cornerRadius(21.0)
                        }
                    }
                }.frame(height: 210.0)
                
                Spacer(minLength: 65.0)
                
                List {
                    ForEach(0..<10) { _ in
                        BottomListRowView(
                            model: CoinAssetModel(
                                assetId: "BTC",
                                name: "Bitcoin",
                                typeIsCrypto: true,
                                priceUSD: 4.0
                            )
                        ).cornerRadius(21.0) 
                    }.listRowBackground(Color.clear)
                }.onAppear {
                    UITableView.appearance().separatorColor = .clear
                    UITableView.appearance().backgroundColor = .clear
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(
                PreviewDevice(rawValue: "iPhone 11 Pro")
            )
    }
}
