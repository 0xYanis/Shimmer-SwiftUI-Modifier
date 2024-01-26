//
//  ShimmerModifier.swift
//  
//
//  Created by Yanis on 27.01.2024.
//

import SwiftUI

@available(iOS 15.0, *)
struct ShimmerModifier: ViewModifier {
    private var isActive: Bool
    private var speed: CGFloat
    private var colors: [Color] = [
        Color(uiColor: .systemGray5),
        Color(uiColor: .systemGray6),
        Color(uiColor: .systemGray5)]
    private var cornerRadius: CGFloat
    
    init(
        isActive: Bool,
        speed: CGFloat,
        colors: [Color],
        cornerRadius: CGFloat
    ) {
        self.isActive = isActive
        self.speed = speed
        self.cornerRadius = cornerRadius
        if !colors.isEmpty {
            self.colors = colors
        }
    }
    
    func body(content: Content) -> some View {
        if isActive {
            content
                .overlay {
                    ShimmerEffectBox(
                        speed: speed,
                        colors: colors
                    ).cornerRadius(cornerRadius)
                }
        }
    }
}
