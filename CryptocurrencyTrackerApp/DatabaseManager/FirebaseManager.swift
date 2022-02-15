//
//  FirebaseManager.swift
//  CryptocurrencyTrackerApp
//
//  Created by fahreddin on 15.02.2022.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class FirebaseManager: DatabaseProtocol {
    
    @Published var data: [CoinAssetModel] = []
    var dataPublisher: Published<[CoinAssetModel]>.Publisher {
        $data
    }
    
    let firestore = Firestore.firestore()
    
    init() { }
    
    func getData() {
        firestore.collection("Coins").getDocuments { [weak self] querySnapshot, error in
            guard let self = self, error == nil else {return}
            
            self.data = querySnapshot?.documents.compactMap({ document in
                try? document.data(as: CoinAssetModel.self)
            }) ?? []
        }
    }
    
}
