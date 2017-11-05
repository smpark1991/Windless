//
//  Windless.swift
//  Windless
//
//  Created by gwangbeom on {TODAY}.
//  Copyright © 2017년 Windless. All rights reserved.
//

import UIKit

struct Location {
    var start: CGPoint
    var end: CGPoint
}

public enum WindlessDirection: Int {
    case right
    case rightDiagonal
    case left
    case leftDiagonal
    case up
    case down
    
    var location: Location {
        switch self {
        case .right:
            return Location(start: CGPoint(x: 0, y: 0.5), end: CGPoint(x: 1, y: 0.5))
        case .rightDiagonal:
            return Location(start: CGPoint(x: 0, y: 0.0), end: CGPoint(x: 1, y: 1))
        case .left:
            return Location(start: CGPoint(x: 1, y: 0.5), end: CGPoint(x: 0, y: 0.5))
        case .leftDiagonal:
            return Location(start: CGPoint(x: 1, y: 1), end: CGPoint(x: 0, y: 0))
        case .up:
            return Location(start: CGPoint(x: 0.5, y: 1), end: CGPoint(x: 0.5, y: 0))
        case .down:
            return Location(start: CGPoint(x: 0.5, y: 0), end: CGPoint(x: 0.5, y: 1))
        }
    }
}

public enum WindlessShape: Int {
    case diagonal
    case straight
}

public protocol Windless {
    
    // gradient가 표현되는 부분 default .right
    var direction: WindlessDirection { get set }
    
    // gradient로 보여지는 부분의 모양 (대각선, 직선) default .diagonal
    var shape: WindlessShape { get set }
    
    // gradient 속도
    var animationSpeed: Float { get set }
    
    var animationDuration: CFTimeInterval { get set }
    
    // 그라디언트 애니메이션이 지나가고 중간에 쉬는 시간
    var pauseDuration: CFTimeInterval { get set }
    
    // TODO 추후에
//    var animationColors: [UIColor] { get set }
    
    var animationLayerColor: UIColor { get set }
    
    var animationLayerOpacity: CGFloat { get set}
    
    var coverLayerColor: UIColor { get set }
    
    var cornerRadius: CGFloat { get set }
}

