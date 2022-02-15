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
                    HStack(spacing: 14.0) {
                        ForEach(viewModel.coins) { coin in
                            TopListRowView(model: coin)
                                .cornerRadius(21.0)
                        }
                    }
                }.frame(height: 210.0)
                
                Spacer(minLength: 65.0)
                
                List(viewModel.coins) { coins in
                    BottomListRowView(model: coins)
                        .cornerRadius(21.0)
                        .listRowBackground(Color.clear)
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
