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
                ScrollView(.horizontal) {
                    HStack(spacing: 14.0) {
                        ForEach(0..<10) { _ in
                            TopListRowView()
                                .cornerRadius(21.0)
                            
                        }
                    }
                }.frame(height: 210.0)
                
                List {
                    ForEach(0..<10) { _ in
                        BottomListRowView()
                            .cornerRadius(21.0)
                        
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
