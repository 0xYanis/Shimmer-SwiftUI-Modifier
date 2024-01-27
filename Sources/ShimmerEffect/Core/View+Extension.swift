//
//  View+Extension.swift
//  
//
//  Created by Yanis on 27.01.2024.
//

import SwiftUI

@available(iOS 15.0, *)
public extension View {
    /// Applies a shimmer effect to the view.
    ///
    /// - Parameters:
    ///   - isActive: A flag indicating whether the shimmer effect is active.
    ///   - speed: The speed of the shimmer animation.
    ///   - colors: An array of colors used in the shimmer animation.
    ///   - cornerRadius: The corner radius of the shimmering view.
    ///
    /// - Returns: A view with the applied shimmer effect.
    func shimmerEffect(
        isActive: Bool,
        speed: CGFloat = 1,
        colors: [Color] = [],
        cornerRadius: CGFloat = 5
    ) -> some View {
        modifier(ShimmerModifier(
            isActive: isActive,
            speed: speed,
            colors: colors,
            cornerRadius: cornerRadius)
        )
    }
    
    /// Applies a simple shimmer effect to the view.
    ///
    /// - Parameters:
    ///   - isActive: A flag indicating whether the shimmer effect is active.
    ///
    /// - Returns: A view with the applied shimmer effect.
    func shimmer(_ isActive: Bool) -> some View {
        modifier(ShimmerModifier(
            isActive: isActive,
            speed: 1,
            colors: [],
            cornerRadius: 5)
        )
    }
}

