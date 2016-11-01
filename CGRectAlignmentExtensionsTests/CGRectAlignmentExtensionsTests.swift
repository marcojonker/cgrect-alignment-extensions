//
//  RectAlignmentExtensionTests.swift
//  CacaduFramework
//
//  Created by Marco on 31/10/2016.
//  Copyright © 2016 Marco. All rights reserved.
//

import XCTest
import CGRectAlignmentExtensions

class RectAlignmentExtensionTests: XCTestCase {
    var container: CGRect!
    var rectToAlign: CGRect!
    
    //MARK: - XCTestCase overrides
    
    override func setUp() {
        super.setUp()
        container = CGRect(x: 100, y: 200, width: 500, height: 300)
        rectToAlign = CGRect(x: 200, y: 300, width: 100, height: 50)
    }
    
    //MARK: - Tests
    
    func testAlignRectInside_RectangleShouldBeAlignedLeft() {
        let alignedRect = rectToAlign.horizontalAligned(to: container, with: .leftInside)
        
        XCTAssertEqual(container.origin.x, alignedRect.origin.x)
        XCTAssertEqual(rectToAlign.origin.y, alignedRect.origin.y)
        XCTAssertEqual(rectToAlign.size, alignedRect.size)
    }
    
    func testAlignRectInside_RectangleShouldBeAlignedRight() {
        let alignedRect = rectToAlign.horizontalAligned(to: container, with:.rightInside)
        
        XCTAssertEqual(container.maxX, alignedRect.maxX)
        XCTAssertEqual(rectToAlign.origin.y, alignedRect.origin.y)
        XCTAssertEqual(rectToAlign.size, alignedRect.size)
    }
    
    func testAlignRectInside_RectangleShouldBeAlignedTop() {
        let alignedRect = rectToAlign.verticalAligned(to: container, with: .topInside)
        
        XCTAssertEqual(container.origin.y, alignedRect.origin.y)
        XCTAssertEqual(rectToAlign.origin.x, alignedRect.origin.x)
        XCTAssertEqual(rectToAlign.size, alignedRect.size)
    }
    
    func testAlignRectInside_RectangleShouldBeAlignedBottom() {
        let alignedRect = rectToAlign.verticalAligned(to: container, with: .bottomInside)
        
        XCTAssertEqual(container.maxY, alignedRect.maxY)
        XCTAssertEqual(rectToAlign.origin.x, alignedRect.origin.x)
        XCTAssertEqual(rectToAlign.size, alignedRect.size)
    }
    
    func testAlignRectInside_RectangleShouldBeCenteredHorzontal() {
        let alignedRect = rectToAlign.horizontalAligned(to: container, with:.center)
        
        XCTAssertEqual(container.midX, alignedRect.midX)
        XCTAssertEqual(rectToAlign.origin.y, alignedRect.origin.y)
        XCTAssertEqual(rectToAlign.size, alignedRect.size)
    }
    
    func testAlignRectInside_RectangleShouldBeCenteredVertical() {
        let alignedRect = rectToAlign.verticalAligned(to: container, with:.center)
        
        XCTAssertEqual(container.midY, alignedRect.midY)
        XCTAssertEqual(rectToAlign.origin.x, alignedRect.origin.x)
        XCTAssertEqual(rectToAlign.size, alignedRect.size)
    }
    
    func testAlignRectInside_RectangleShouldStretchHorizontal() {
        let alignedRect = rectToAlign.horizontalAligned(to: container, with: .stretchInside)
        
        XCTAssertEqual(container.origin.x, alignedRect.origin.x)
        XCTAssertEqual(container.size.width, alignedRect.size.width)
        XCTAssertEqual(rectToAlign.origin.y, alignedRect.origin.y)
        XCTAssertEqual(rectToAlign.size.height, alignedRect.size.height)
    }
    
    func testAlignRectInside_RectangleShouldStretchVertical() {
        let alignedRect = rectToAlign.verticalAligned(to: container, with: .stretchInside)
        
        XCTAssertEqual(container.origin.y, alignedRect.origin.y)
        XCTAssertEqual(container.size.height, alignedRect.size.height)
        XCTAssertEqual(rectToAlign.origin.x, alignedRect.origin.x)
        XCTAssertEqual(rectToAlign.size.width, alignedRect.size.width)
    }
    
    func testAlignRectOutside_RectangleShouldBeAlignedLeft() {
        let alignedRect = rectToAlign.horizontalAligned(to: container, with:.leftOutside)
        
        XCTAssertEqual(container.origin.x, alignedRect.maxX)
        XCTAssertEqual(rectToAlign.origin.y, alignedRect.origin.y)
        XCTAssertEqual(rectToAlign.size, alignedRect.size)
    }
    
    func testAlignRectOutside_RectangleShouldBeAlignedTop() {
        let alignedRect = rectToAlign.verticalAligned(to: container, with:.topOutside)
        
        XCTAssertEqual(container.origin.y, alignedRect.maxY)
        XCTAssertEqual(rectToAlign.origin.x, alignedRect.origin.x)
        XCTAssertEqual(rectToAlign.size, alignedRect.size)
    }
    
    func testAlignRectOutside_RectangleShouldBeAlignedRight() {
        let alignedRect = rectToAlign.horizontalAligned(to: container, with:.rightOutside)
        
        XCTAssertEqual(container.maxX, alignedRect.origin.x)
        XCTAssertEqual(rectToAlign.origin.y, alignedRect.origin.y)
        XCTAssertEqual(rectToAlign.size, alignedRect.size)
    }
    
    func testAlignRectOutside_RectangleShouldBeAlignedBottom() {
        let alignedRect = rectToAlign.verticalAligned(to: container, with:.bottomOutside)
        
        XCTAssertEqual(container.maxY, alignedRect.origin.y)
        XCTAssertEqual(rectToAlign.origin.x, alignedRect.origin.x)
        XCTAssertEqual(rectToAlign.size, alignedRect.size)
    }
    
    func testAlignRectOutside_RectangleShouldBeAlignedLeftVerticalCenter() {
        let alignedRect = rectToAlign.aligned(to: container, with:.leftOutside, and:.center)
        
        XCTAssertEqual(container.origin.x, alignedRect.maxX)
        XCTAssertEqual(container.midY, alignedRect.midY)
        XCTAssertEqual(rectToAlign.size, alignedRect.size)
    }
    
    
    func testAlignRectOutside_RectangleShouldBeAlignedTopHorizontalCenter() {
        let alignedRect = rectToAlign.aligned(to: container, with:.center, and:.topOutside)
        
        XCTAssertEqual(container.origin.y, alignedRect.maxY)
        XCTAssertEqual(container.midX, alignedRect.midX)
        XCTAssertEqual(rectToAlign.size, alignedRect.size)
    }
    
    func testAlignRectOutside_RectangleShouldBeAlignedRightVerticalCenter() {
        let alignedRect = rectToAlign.aligned(to: container, with:.rightOutside, and:.center)
        
        XCTAssertEqual(container.maxX, alignedRect.origin.x)
        XCTAssertEqual(container.midY, alignedRect.midY)
        XCTAssertEqual(rectToAlign.size, alignedRect.size)
    }
    
    func testAlignRectOutside_RectangleShouldBeAlignedBottomHorizontalCenter() {
        let alignedRect = rectToAlign.aligned(to: container, with:.center, and:.topOutside)
        
        XCTAssertEqual(container.origin.y, alignedRect.maxY)
        XCTAssertEqual(container.midX, alignedRect.midX)
        XCTAssertEqual(rectToAlign.size, alignedRect.size)
    }
    
    func testAlignRectOutside_RectangleShouldBeAlignedLeftVerticalStretch() {
        let alignedRect = rectToAlign.aligned(to: container, with:.leftOutside, and: .stretchInside)
        
        XCTAssertEqual(container.origin.x, alignedRect.maxX)
        XCTAssertEqual(container.origin.y, alignedRect.origin.y)
        XCTAssertEqual(container.size.height, alignedRect.size.height)
        XCTAssertEqual(rectToAlign.size.width, alignedRect.size.width)
    }
    
    
    func testAlignRectOutside_RectangleShouldBeAlignedTopHorizontalStretch() {
        let alignedRect = rectToAlign.aligned(to: container, with:.stretchInside, and: .topOutside)
        
        XCTAssertEqual(container.origin.y, alignedRect.maxY)
        XCTAssertEqual(container.origin.x, alignedRect.origin.x)
        XCTAssertEqual(container.size.width, alignedRect.size.width)
        XCTAssertEqual(rectToAlign.size.height, alignedRect.size.height)
    }
    
    func testAlignRectOutside_RectangleShouldBeAlignedRightVerticalStretch() {
        let alignedRect = rectToAlign.aligned(to: container, with:.rightOutside, and: .stretchInside)
        
        XCTAssertEqual(container.maxX, alignedRect.origin.x)
        XCTAssertEqual(container.origin.y, alignedRect.origin.y)
        XCTAssertEqual(container.size.height, alignedRect.size.height)
        XCTAssertEqual(rectToAlign.size.width, alignedRect.size.width)
    }
    
    func testAlignRectOutside_RectangleShouldBeAlignedBottomHorizontalStretch() {
        let alignedRect = rectToAlign.aligned(to: container, with:.stretchInside, and:.topOutside)
        
        XCTAssertEqual(container.origin.y, alignedRect.maxY)
        XCTAssertEqual(container.origin.x, alignedRect.origin.x)
        XCTAssertEqual(container.size.width, alignedRect.size.width)
        XCTAssertEqual(rectToAlign.size.height, alignedRect.size.height)
    }
    
    func testAspectFit_RectangleShouldStretchFitVertically() {
        let rectToFit = CGRect(x: 20, y: 30, width: 10, height: 200)
        let fittedRect = rectToFit.aspectFitted(in: container)
        
        XCTAssertEqual(container.origin.y, fittedRect.origin.y)
        XCTAssertEqual(container.size.height, fittedRect.size.height)
        XCTAssertEqual(fittedRect.size.width, 15)
        XCTAssertEqual(fittedRect.origin.x, 342.5)
    }
    
    func testAspectFit_RectangleShouldShrinkFitVertically() {
        let rectToFit = CGRect(x: 20, y: 30, width: 10, height: 1200)
        let fittedRect = rectToFit.aspectFitted(in: container)
        
        XCTAssertEqual(container.origin.y, fittedRect.origin.y)
        XCTAssertEqual(container.size.height, fittedRect.size.height)
        XCTAssertEqual(fittedRect.size.width, 2.5)
        XCTAssertEqual(fittedRect.origin.x, 348.75)
    }
    
    func testAspectFit_RectangleShouldStretchFitHorizontally() {
        let rectToFit = CGRect(x: 20, y: 30, width: 250, height: 20)
        let fittedRect = rectToFit.aspectFitted(in: container)
        
        XCTAssertEqual(container.origin.x, fittedRect.origin.x)
        XCTAssertEqual(container.size.width, fittedRect.size.width)
        XCTAssertEqual(fittedRect.size.height, 40)
        XCTAssertEqual(fittedRect.origin.y, 330)
    }
    
    func testAspectFit_RectangleShouldShrinkFitHorizontally() {
        let rectToFit = CGRect(x: 20, y: 30, width: 1000, height: 20)
        let fittedRect = rectToFit.aspectFitted(in: container)
        
        XCTAssertEqual(container.origin.x, fittedRect.origin.x)
        XCTAssertEqual(container.size.width, fittedRect.size.width)
        XCTAssertEqual(fittedRect.size.height, 10)
        XCTAssertEqual(fittedRect.origin.y, 345)
    }
    
    func testAspectFitSquare_WhenHeightIsSmallerThanWidthThenTheSquareSizeIsEqualToTheHeight() {
        let container = CGRect(x: 20, y: 30, width: 300, height: 150)
        let square = container.aspectFittedSquare()
        
        XCTAssertEqual(container.size.height, square.size.height)
        XCTAssertEqual(square.size.height, square.size.width)
        XCTAssertEqual(container.origin.y, square.origin.y)
        XCTAssertEqual(square.origin.x, 95)
    }
    
    func testAspectFitSquare_WhenWidthIsSmallerThanHeightThenTheSquareSizeIsEqualToTheWidth() {
        let container = CGRect(x: 20, y: 30, width: 100, height: 400)
        let square = container.aspectFittedSquare()
        
        XCTAssertEqual(container.size.width, square.size.width)
        XCTAssertEqual(square.size.height, square.size.width)
        XCTAssertEqual(container.origin.x, square.origin.x)
        XCTAssertEqual(square.origin.y, 180)
    }
    
    func testAspectFill_RectangleShouldStretchFitHorzontally() {
        let rectToFill = CGRect(x: 20, y: 30, width: 50, height: 200)
        let filledRect = rectToFill.aspectFilled(in: container)
        
        XCTAssertEqual(container.origin.x, filledRect.origin.x)
        XCTAssertEqual(container.size.width, filledRect.size.width)
        XCTAssertEqual(filledRect.size.height, 2000)
        XCTAssertEqual(filledRect.origin.y, -650)
    }
    
    func testAspectFill_RectangleShouldShrinkFitHorzontally() {
        let rectToFill = CGRect(x: 20, y: 30, width: 750, height: 6000)
        let filledRect = rectToFill.aspectFilled(in: container)
        
        XCTAssertEqual(container.origin.x, filledRect.origin.x)
        XCTAssertEqual(container.size.width, filledRect.size.width)
        XCTAssertEqual(filledRect.size.height, 4000)
        XCTAssertEqual(filledRect.origin.y, -1650)
    }
    
    func testAspectFill_RectangleShouldStretchFitHVertically() {
        let rectToFill = CGRect(x: 20, y: 30, width: 300, height: 60)
        let filledRect = rectToFill.aspectFilled(in: container)
        
        XCTAssertEqual(container.origin.y, filledRect.origin.y)
        XCTAssertEqual(container.size.height, filledRect.size.height)
        XCTAssertEqual(filledRect.size.width, 1500)
        XCTAssertEqual(filledRect.origin.x, -400)
    }
    
    func testAspectFill_RectangleShouldShrinkFitHVertically() {
        let rectToFill = CGRect(x: 20, y: 30, width: 3000, height: 400)
        let filledRect = rectToFill.aspectFilled(in: container)
        
        XCTAssertEqual(container.origin.y, filledRect.origin.y)
        XCTAssertEqual(container.size.height, filledRect.size.height)
        XCTAssertEqual(filledRect.size.width, 2250)
        XCTAssertEqual(filledRect.origin.x, -775)
    }
}
