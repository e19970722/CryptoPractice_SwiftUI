//
//  CoinImageViewModel.swift
//  20241215_CryptoAPP
//
//  Created by Yen Lin on 2025/1/4.
//

import Foundation
import SwiftUI
import Combine

class CoinImageViewModel: ObservableObject {
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = true
    
    private let coin: CoinModel
    private let dataService: CoinImageService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coin = coin
        self.dataService = CoinImageService(coin: coin)
        self.addSubscribers()
        self.isLoading = true
    }
    
    private func addSubscribers() {
        self.dataService.$image
            .sink { (_) in
                self.isLoading = false
            } receiveValue: { (returnedImage) in
                self.image = returnedImage
            }
            .store(in: &cancellables)

    }
}
