//
//  UIApplicationExt.swift
//  ClipboardCleaner
//
//  Created by Ma Xueyuan on 2020/10/30.
//

import SwiftUI

extension UIApplication {
    var currentScene: UIWindowScene? {
        connectedScenes
            .first { $0.activationState == .foregroundActive } as? UIWindowScene
    }
}
