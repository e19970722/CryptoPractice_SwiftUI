//
//  CircleButtonAnimationView.swift
//  20241215_CryptoAPP
//
//  Created by Yen Lin on 2024/12/15.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(animate ? Animation.easeInOut(duration: 1.0) : .none)
        
    }
}

#Preview {
    CircleButtonAnimationView(animate: .constant(false))
        .foregroundColor(Color.theme.red)
        .frame(width: 100, height: 100)
}
