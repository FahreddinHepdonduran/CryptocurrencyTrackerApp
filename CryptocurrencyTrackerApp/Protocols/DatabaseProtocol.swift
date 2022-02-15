//
//  DatabaseProtocol.swift
//  CryptocurrencyTrackerApp
//
//  Created by fahreddin on 15.02.2022.
//

import Foundation

protocol DatabaseProtocol {
    var dataPublisher: Published<String>.Publisher { get }
    func getData()
}
