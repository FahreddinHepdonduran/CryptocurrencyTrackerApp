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
            
            ScrollView(.horizontal) {
                HStack(spacing: 14.0) {
                    ForEach(0..<10) { _ in
                        TopListRowView()
                            .cornerRadius(21.0)
                        
                    }
                }
            }.frame(height: 210.0)
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
