//
//  ContentView.swift
//  CryptocurrencyTrackerApp
//
//  Created by fahreddin on 4.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LinearGradient(
            colors:
                [
                    Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
                    Color(#colorLiteral(red: 0.4588235294, green: 0.2745098039, blue: 0.5058823529, alpha: 1))
                ],
            startPoint: .top,
            endPoint: .bottom
        ).edgesIgnoringSafeArea(.all)
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
