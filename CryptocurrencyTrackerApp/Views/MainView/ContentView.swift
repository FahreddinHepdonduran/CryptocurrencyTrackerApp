//
//  ContentView.swift
//  CryptocurrencyTrackerApp
//
//  Created by fahreddin on 4.02.2022.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @ObservedObject var viewModel = CoinViewModel()
    
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
                    HStack(spacing: 6.0) {
                        Spacer(minLength: 20.0)
                        
                        ForEach(Array(top10Coins().enumerated()), id: \.element.id) { index, coin in
                            TopListRowView(model: coin, index: index)
                                .cornerRadius(21.0)
                        }
                    }
                }.frame(height: 210.0)
                
                Spacer(minLength: 65.0)
                
                ScrollView {
                    VStack(spacing: 14.0) {
                        ForEach(viewModel.coins) { coin in
                            BottomListRowView(model: coin)
                                .cornerRadius(21.0)
                                .padding([.leading, .trailing], 20.0)
                        }
                    }
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
