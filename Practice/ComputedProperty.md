# Computed Property

## Getter & Setter with Method

> In addition to `stored properties`, classes, structures, and enumerations can define `computed properties`, which do not actually store a value. Instead, they provide a getter and an optional setter to retrieve and set other properties and values indirectly.

* Code

```swift
struct CoordinatePoint {
  var x: Int
  var y: Int

  func oppsitePoint() -> CoordinatePoint {
    return CoordinatePoint(x: -x, y: -y)
  }

  mutating func setOppositePoint(_ opposite: CoordinatePoint) {
    x = -opposite.x
    y = -opposite.y
  }
}
```

* Result

```
CoordinatePoint(x: 10, y: 20)
CoordinatePoint(x: -10, y: -20)
```

## Refactor Computed Property 

* Code

```swift
struct CoordinatePoint {
  var x: Int  // Stored Property
  var y: Int  // Stored Property

  // symmetry coordinate
  // Computed Property
  var oppositePoint: CoordinatePoint {
    // getter
    get {
      return CoordinatePoint(x: -x, y: -y)
    }
    // setter
    set(opposite) {
      x = -opposite.x
      y = -opposite.y
    }
  }
}
```

* Result

```
CoordinatePoint(x: 10, y: 20)
CoordinatePoint(x: -10, y: -20)
CoordinatePoint(x: -15, y: -10)
```

## Refactor Computed Property omisstion Parameter

* Code

```swift
struct CoordinatePoint {
  var x: Int  // Stored Property
  var y: Int  // Stored Property

  // symmetry coordinate
  // Computed Property
  var oppositePoint: CoordinatePoint {
    // getter
    get {
      return CoordinatePoint(x: -x, y: -y)
    }
    // setter
    set {
      x = -newValue.x
      y = -newValue.y
    }
  }
}
```

* Result

```
CoordinatePoint(x: 10, y: 20)
CoordinatePoint(x: -10, y: -20)
CoordinatePoint(x: -15, y: -10)
```