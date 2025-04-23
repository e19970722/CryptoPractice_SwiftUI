//
//  UIApplication.swift
//  20241215_CryptoAPP
//
//  Created by Yen Lin on 2025/1/13.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
