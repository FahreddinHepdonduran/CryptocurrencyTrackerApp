//
//  SplashView.swift
//  CryptocurrencyTrackerApp
//
//  Created by fahreddin on 24.05.2022.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Color
                .white
                .edgesIgnoringSafeArea(.all)
            
            Image("splash-icon")
                .resizable()
                .frame(width: 192.0, height: 218.0)
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
