//
//  RectAlignmentExtensions.swift
//  CacaduFramework
//
//  Created by Marco on 31/10/2016.
//  Copyright © 2016 Marco. All rights reserved.
//

import Foundation
import UIKit

/// Vertical alignment methods
public enum VerticalAlignment  {
    /// No alignment
    case none
    /// Align top outside container
    case topOutside
    /// Align top inside container
    case topInside
    /// Align to vertical center of container
    case center
    /// Align bottom inside container
    case bottomInside
    /// Align bottom outside container
    case bottomOutside
    /// Stretch from top to bottom
    case stretchInside
}

/// Horizontal alignment methods
public enum HorizontalAlignment  {
    /// No alignment
    case none
    /// Align left outside container
    case leftOutside
    /// Align left inside container
    case leftInside
    /// Align to horizontal center of container
    case center
    /// Align right inside container
    case rightInside
    /// Align right outside container
    case rightOutside
    /// Stretch from left to right
    case stretchInside
}

/**
 Alignment extentsion to the CGRect struct
 */
public extension CGRect {
    /**
     Align the rectangle to a container rectangle
     
     - parameter container: Rectangle to align to
     - parameter horizontalAlignment: Horizontal alignment method
     - parameter verticalAlignment: Vertical alignment method
     */
    public mutating func align(to container: CGRect, with horizontalAlignment: HorizontalAlignment, and verticalAligment: VerticalAlignment) {
        horizontalAlign(to: container, with: horizontalAlignment)
        verticalAlign(to: container, with: verticalAligment)
    }
    
    /**
     Create a rectangle that is aligned to a container rectangle
     
     - parameter container: Rectangle to align to
     - parameter horizontalAlignment: Horizontal alignment method
     - parameter verticalAlignment: Vertical alignment method
     
     - returns: The aligned rectangle
     */
    public func aligned(to container: CGRect, with horizontalAlignment: HorizontalAlignment, and verticalAligment: VerticalAlignment) -> CGRect {
        return  horizontalAligned(to: container, with: horizontalAlignment).verticalAligned(to: container, with: verticalAligment)
    }
  
    /**
     Aspect fill the rectangle inside a container
     
     If the width or height of the rectangle is zero,
     the rectangle will only be centered to the container
     
     - parameter container: Rectangle to fit the rectangle into
     
     - returns: The aspect filled rectangle
     */
    public mutating func aspectFill(in container: CGRect) {
        if(size.height != 0 && size.width != 0) {
            let scale = max(container.size.width / size.width, container.size.height / size.height)
            size.width *= scale
            size.height *= scale
            
            center(to: container)
        } else {
            center(to: container)
        }
    }
    
    /**
     Create an rectangle that is aspect filled inside a container rectangle
     
     If the width or height of the rectangle is zero,
     the rectangle will only be centered to the container
     
     - parameter container: Rectangle to fit the rectangle into
     
     - returns: The aspect filled rectangle
     */
    public func aspectFilled(in container: CGRect) -> CGRect {
        var result = self
        result.aspectFill(in: container)
        return result
    }
    
    /**
     Aspect fit a rectangle in a container rectangle
     
     If the width or height of the rectangle is zero,
     the rectangle will only be centered to the container
     
     - parameter container: Rectangle to fit the rectangle into
     */
    public mutating func aspectFit(in container: CGRect) {
        if(size.height != 0 && size.width != 0) {
            let scale = min(container.size.width / size.width, container.size.height / size.height)
            size.width *=  scale
            size.height *= scale
            center(to: container)
        } else {
            center(to: container)
        }
    }
    
    /**
     Create a rectangle that is aspect fitted in a container rectangle
     
     If the width or height of the rectangle is zero,
     the rectangle will only be centered to the container
     
     - parameter container: Rectangle to fit the rectangle into
     
     - returns: The aspect fitted rectangle
     */
    public func aspectFitted(in container: CGRect) -> CGRect {
        var result = self
        result.aspectFit(in: container)
        return result
    }

    /**
     Create a square that is fitted inside the rectangle
     
     - returns: The square fitted rectangle
     */
    public func aspectFittedSquare() -> CGRect {
        var result = self
        if(size.width < size.height) {
            result.size.height = size.width
        } else {
            result.size.width = size.height
        }
        return result.centered(to: self)
    }
    
    /**
     Align the rectangle to the center of the container
     
     - parameter container: Rectangle to align to
     */
    public mutating func center(to container: CGRect) {
        align(to: container, with: HorizontalAlignment.center, and: VerticalAlignment.center)
    }
    
    /**
     Create a rectangle that is aligned to the center of the container

     - parameter container: Rectangle to align to
     
     - returns: Centered rectangle
     */
    public func centered(to container: CGRect) -> CGRect {
        return aligned(to: container, with: HorizontalAlignment.center, and: VerticalAlignment.center)
    }
    
    /**
     Align the rectangle to a container rectangle horizontally
     
     - parameter container: Rectangle to align to
     - parameter horizontalAlignment: Horizontal alignment method
     */
    public mutating func horizontalAlign(to container: CGRect, with alignment: HorizontalAlignment) {
        switch (alignment) {
        case .none:
            break
        case .leftOutside:
            origin.x = container.origin.x - size.width;
        case .leftInside:
            origin.x = container.origin.x
        case .center:
            origin.x = container.midX - size.width * 0.5
        case .rightInside:
            origin.x = container.maxX - size.width;
        case .rightOutside:
            origin.x = container.maxX;
        case .stretchInside:
            origin.x = container.origin.x
            size.width = container.size.width
        }
    }
    
    /**
     Create a rectangle horizontally aligned to a container
     
     - parameter container: Rectangle to align to
     - parameter horizontalAlignment: Horizontal alignment method
     
     - returns: The aligned rectangle
     */
    public func horizontalAligned(to container: CGRect, with alignment: HorizontalAlignment) -> CGRect {
        var result = self
        result.horizontalAlign(to: container, with: alignment)
        return result
    }
    
    /**
    Inset a rect by specific UIEdgeInsets
 
    - Parameter insets: The edge insets to be applied to the adjustment.
     */
    public mutating func inset(by insets: UIEdgeInsets) {
        self =  self.insetted(by: insets)
    }
    
    /**
     Create an new rectange of a rectangle that is insetted by specific UIEdgeInsets
     
     - Parameter insets: The edge insets to be applied to the adjustment.
     - Returns: A rectangle that is adjusted by the UIEdgeInsets structure passed in insets.
     */
    public func insetted(by insets: UIEdgeInsets) -> CGRect {
        return UIEdgeInsetsInsetRect(self, insets)
    }
    
    /**
     Align the rectangle to a container rectangle vertically
     
     - parameter container: Rectangle to align to
     - parameter verticalAlignment: Vertical alignment method
     */
    public mutating func verticalAlign(to container: CGRect, with alignment: VerticalAlignment) {
        switch (alignment) {
        case .none:
            break
        case .topOutside:
            origin.y = container.origin.y - size.height;
        case .topInside:
            origin.y = container.origin.y;
        case .center:
            origin.y = container.midY - size.height * 0.5
        case .bottomInside:
            origin.y = container.maxY - size.height;
        case .bottomOutside:
            origin.y = container.maxY;
        case .stretchInside:
            origin.y = container.origin.y
            size.height = container.size.height
        }
    }
    
    /**
     Create a rectangle vertically aligned to a container
     
     - parameter container: Rectangle to align to
     - parameter verticalAlignment: Vertical alignment method
     
     - returns: The aligned rectangle
     */
    public func verticalAligned(to container: CGRect, with alignment: VerticalAlignment) -> CGRect {
        var result = self
        result.verticalAlign(to: container, with: alignment)
        return result
    }
}
