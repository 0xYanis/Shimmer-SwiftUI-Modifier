//
//  View+Extension.swift
//  
//
//  Created by Yanis on 27.01.2024.
//

import SwiftUI

@available(iOS 15.0, *)
extension View {
    /// Applies a shimmer effect to the view.
    ///
    /// - Parameters:
    ///   - isActive: A flag indicating whether the shimmer effect is active.
    ///   - speed: The speed of the shimmer animation.
    ///   - colors: An array of colors used in the shimmer animation.
    ///   - cornerRadius: The corner radius of the shimmering view.
    ///
    /// - Returns: A view with the applied shimmer effect.
    public func shimmerEffect(
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
}