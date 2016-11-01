# CGRectAlignmentExtensions #

CGRectAlignmentExtensions is a library that makes it easy to align rectangle to each other. It contains function to align, aspect fit and aspect fill rectangles based a container rectangle.

* By: [Marco Jonker](http://www.cacadu.nl)
* Swift: [^3.*](http://www.swift.org)
* Source: [github](www.cacadu.nl)
* Docs: [cocoadocs]()


### Installation

```
pod install ....
```



### Example 1 - align

Align a rectangle horizontally to the right outside and vertically to the center of another rectangle

```swift
let rect1 = CGRect(10, 10, 100, 100)
var rect2 = CGRect(90, 90, 50, 80)

rect2.align(to: rect1, with: .leftOutside, and: .center)
```

### Example 2 - aligned

Create an new aligned rectangle horizontally stretched and vertically aligned to the bottom

```swift
let rect1 = CGRect(10, 10, 100, 100)
let rect2 = CGRect(90, 90, 50, 80)

let rect3 = rect2.aligned(to: rect1, with: .stretchInside, and: .bottomInside)
```

### Example 3 - center

Center a rectangle

```swift
let rect1 = CGRect(10, 10, 100, 100)
var rect2 = CGRect(90, 90, 50, 80)

rect2.center(to: rect1)
```

### Example 4 - centered

Create a new centered rectangle

```swift
let rect1 = CGRect(10, 10, 100, 100)
let rect2 = CGRect(90, 90, 50, 80)

let rect3 = rect2.centered(to: rect1)
```

### Example 5 - aspectFit


Aspect fit a rectangle into a container

```swift
let rect1 = CGRect(10, 10, 100, 100)
var rect2 = CGRect(90, 90, 50, 80)

rect2.aspectFit(in: rect1)
```

### Example 6 - aspectFitted

Create a new rectangle of a rectangle that is aspect fitted into a container

```swift
let rect1 = CGRect(10, 10, 100, 100)
let rect2 = CGRect(90, 90, 50, 80)

let rect3 = rect2.aspectFitted(in: rect1)
```

### Example 7 - aspectFill

Aspect fit a rectangle into a container

```swift
let rect1 = CGRect(10, 10, 100, 100)
var rect2 = CGRect(90, 90, 50, 80)

rect2.aspectFill(in: rect1)
```

### Example 8 - aspectFilled

Create a new rectangle of a rectangle that is aspect filled into a container


```swift
let rect1 = CGRect(10, 10, 100, 100)
let rect2 = CGRect(90, 90, 50, 80)

let rect3 = rect2.aspectFilled(in: rect1)
```