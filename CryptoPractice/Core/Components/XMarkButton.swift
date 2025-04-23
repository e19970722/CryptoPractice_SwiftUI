//
//  XMarkButton.swift
//  20241215_CryptoAPP
//
//  Created by Yen Lin on 2025/4/20.
//

import SwiftUI

struct XMarkButton: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        Button(action: {
            isPresented = false
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}

#Preview {
    XMarkButton(isPresented: .constant(false))
}
