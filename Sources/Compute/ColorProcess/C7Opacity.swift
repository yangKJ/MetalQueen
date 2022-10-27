//
//  C7Opacity.swift
//  MetalQueenDemo
//
//  Created by Condy on 2021/8/8.
//

import Foundation

/// 透明度调整，核心就是改变`alpha`
public struct C7Opacity: C7FilterProtocol {
    
    public static let range: ParameterRange<Float, Self> = .init(min: -1.0, max: 1.0, value: 1.0)
    
    /// Change the opacity of an image, from -1.0 to 1.0, with a default of 0.0
    public var opacity: Float = range.value
    
    public var modifier: Modifier {
        return .compute(kernel: "C7Opacity")
    }
    
    public var factors: [Float] {
        return [opacity]
    }
    
    public init() { }
}
