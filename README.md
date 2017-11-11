# CGRectAlignmentExtensions #

CGRectAlignmentExtensions is a library that makes it easy to align rectangle to each other. It contains function to align, aspect fit and aspect fill rectangles based a container rectangle.

## INSTALLATION ##

1. Create a file name 'Podfile'

```
target '<PROJECT_NAME>' do
  use_frameworks!
  pod 'CGRectAlignmentExtensions', '>= 1.0'
end
```

2. In the terminal in your project folder Run 'pod install' from 

```
pod install
```

For more information about installing cocoapods see: [cocoapos](https://cocoapods.org)

## FUNCTIONS ##

* align
* aligned
* aspectFill
* aspectFilled
* aspectFit
* aspectFitted
* center
* centered
* horizontalAlign
* horizontalAligned
* inset
* insetted
* verticalAlign
* verticaAligned

## EXAMPLES ##

### align ###

Align a rectangle horizontally to the right outside and vertically to the center of another rectangle

```swift
let rect1 = CGRect(10, 10, 100, 100)
var rect2 = CGRect(90, 90, 50, 80)

rect2.align(to: rect1, with: .leftOutside, and: .center)
```

### aligned ###

Create an new aligned rectangle horizontally stretched and vertically aligned to the bottom

```swift
let rect1 = CGRect(10, 10, 100, 100)
let rect2 = CGRect(90, 90, 50, 80)

let rect3 = rect2.aligned(to: rect1, with: .stretchInside, and: .bottomInside)
```

### aspectFill ###

Aspect fit a rectangle into a container

```swift
let rect1 = CGRect(10, 10, 100, 100)
var rect2 = CGRect(90, 90, 50, 80)

rect2.aspectFill(in: rect1)
```

### aspectFilled ###

Create a new rectangle of a rectangle that is aspect filled into a container

```swift
let rect1 = CGRect(10, 10, 100, 100)
let rect2 = CGRect(90, 90, 50, 80)

let rect3 = rect2.aspectFilled(in: rect1)
```

### aspectFit ###

Aspect fit a rectangle into a container

```swift
let rect1 = CGRect(10, 10, 100, 100)
var rect2 = CGRect(90, 90, 50, 80)

rect2.aspectFit(in: rect1)
```

### aspectFitted ###

Create a new rectangle of a rectangle that is aspect fitted into a container

```swift
let rect1 = CGRect(10, 10, 100, 100)
let rect2 = CGRect(90, 90, 50, 80)

let rect3 = rect2.aspectFitted(in: rect1)
```

### center ###

Center a rectangle

```swift
let rect1 = CGRect(10, 10, 100, 100)
var rect2 = CGRect(90, 90, 50, 80)

rect2.center(to: rect1)
```

### centered ###

Create a new centered rectangle

```swift
let rect1 = CGRect(10, 10, 100, 100)
let rect2 = CGRect(90, 90, 50, 80)

let rect3 = rect2.centered(to: rect1)
```

### horizontalAlign ###

Align a rectangle horizontally to the right outside of another rectangle

```swift
let rect1 = CGRect(10, 10, 100, 100)
var rect2 = CGRect(90, 90, 50, 80)

rect2.horizontalAligned(to: rect1, with: .rightOutside)
```

### horizontalAligned ###

Create an new aligned rectangle horizontally stretched

```swift
let rect1 = CGRect(10, 10, 100, 100)
let rect2 = CGRect(90, 90, 50, 80)

let rect3 = rect2.horizontalAligned(to: rect1, with: .stretchInside)
```

### inset ###

Inset a rect by specific UIEdgeInsets

```swift
let rect = CGRect(10, 10, 100, 100)
let insets = UIEdgeInsets(top: 5, left: 10, bottom: 15, right: 30)

rect.inset(by: insets)
```

### insetted ###

Create an new rectange of a rectangle that is insetted by specific UIEdgeInsets

```swift
let rect = CGRect(10, 10, 100, 100)
let insets = UIEdgeInsets(top: 5, left: 10, bottom: 15, right: 30)

let rect2 = rect.insetted(by: insets)
```

### verticalAlign ###

Align a rectangle horizontally to the top outside of another rectangle

```swift
let rect1 = CGRect(10, 10, 100, 100)
var rect2 = CGRect(90, 90, 50, 80)

rect2.verticalAlign(to: rect1, with: .topOutside)
```

### verticalAligned ###

Create an new aligned rectangle vertical stretched

```swift
let rect1 = CGRect(10, 10, 100, 100)
let rect2 = CGRect(90, 90, 50, 80)

let rect3 = rect2.verticalAligned(to: rect1, with: .stretchInside)
```

## Additional information ##

* Created by: [Marco](http://www.cacadu.nl) and Arno
* Swift version: [^3.*](http://www.swift.org)
* Documentation: [cocoadocs](http://cocoadocs.org/docsets/CGRectAlignmentExtensions/1.0.5/)
