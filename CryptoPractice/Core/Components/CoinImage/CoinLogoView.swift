//
//  CoinLogoView.swift
//  20241215_CryptoAPP
//
//  Created by Yen Lin on 2025/4/21.
//

import SwiftUI

struct CoinLogoView: View {
    
    let coin: CoinModel
    
    var body: some View {
        VStack {
            CoinImageView(coin: coin)
                .frame(width: 50, height: 50)
            
            Text(coin.symbol.uppercased())
                .font(.headline)
                .foregroundColor(Color.theme.accent)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            
            Text(coin.name)
                .font(.caption)
                .foregroundColor(Color.theme.secondary)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
            
        }
    }
}

#Preview {
    Group {
        CoinLogoView(coin: DeveloperPreview.instance.coin)
            .previewLayout(.sizeThatFits)
            .colorScheme(.light)
        
        CoinLogoView(coin: DeveloperPreview.instance.coin)
            .previewLayout(.sizeThatFits)
            .colorScheme(.dark)
            
    }
    
}
