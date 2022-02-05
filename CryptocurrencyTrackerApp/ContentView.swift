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
                    Color(#colorLiteral(red: 0.0431372549, green: 0.08235294118, blue: 0.1019607843, alpha: 1)),
                    Color(#colorLiteral(red: 0.1254901961, green: 0.2235294118, blue: 0.2666666667, alpha: 1))
                ],
            startPoint: .top,
            endPoint: .bottom
        ).edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
