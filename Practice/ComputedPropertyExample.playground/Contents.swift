//: # Computed Property #
//: Computed Property Example

import UIKit

//struct CoordinatePoint {
//  var x: Int
//  var y: Int
//
//  func oppsitePoint() -> CoordinatePoint {
//    return CoordinatePoint(x: -x, y: -y)
//  }
//
//  mutating func setOppositePoint(_ opposite: CoordinatePoint) {
//    x = -opposite.x
//    y = -opposite.y
//  }
//}
//
//var userPosition: CoordinatePoint = CoordinatePoint(x: 10, y: 20)
//print(userPosition)
//print(userPosition.oppsitePoint())


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

var userPosition: CoordinatePoint = CoordinatePoint(x: 10, y: 20)
// current Coordinate
print(userPosition)
// Symmetry Coordinate
print(userPosition.oppositePoint)

userPosition.oppositePoint = CoordinatePoint(x: 15, y: 10)
print(userPosition)
