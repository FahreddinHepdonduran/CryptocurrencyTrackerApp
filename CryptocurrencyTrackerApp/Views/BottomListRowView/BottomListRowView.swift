//
//  BottomListRowView.swift
//  CryptocurrencyTrackerApp
//
//  Created by fahreddin on 6.02.2022.
//

import SwiftUI

struct BottomListRowView: View {
    var body: some View {
        ZStack {
            Color("BottomListRowBackgroundColor")
            
            HStack {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 46.0, height: 46.0)
                    .padding(.leading, 16.0)
                
                Spacer(minLength: 22.0)
                
                Text("BTC")
                    .font(.custom("Roboto", size: 16.0))
                    .foregroundColor(.white)
                
                Spacer(minLength: 71.0)
                
                Text("$46464646")
                    .font(.custom("Roboto", size: 16.0))
                    .foregroundColor(.white)
                    .padding(.trailing, 43.0)
            }.frame(width: 317.0, height: 77.0)
        }
    }
}

struct BottomListRowView_Previews: PreviewProvider {
    static var previews: some View {
        BottomListRowView()
            .previewLayout(
                .fixed(width: 317.0, height: 77.0)
            )
    }
}
