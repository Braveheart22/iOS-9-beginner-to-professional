//: Playground - noun: a place where people can play

import UIKit

var oddNumbers = [Int]()

for i in 0 ..< 100 {
    if i % 2 != 0 {
        oddNumbers.append(i)
    }
}

print(oddNumbers)

var sums = [Int]()

for i in 0 ..< oddNumbers.count {
    sums.append(oddNumbers[i] + 5)
}

var x = 0
repeat {
    print("The sum is: \(sums[x])")
    x += 1
} while x < sums.count

print(sums)

for i in 0...10 {
    print ("\(i) times 5 is \(i * 5)")
}

let somePoint = (0, 300123456789)
switch somePoint {
case (0, 0):
    print("(0, 0) is at the origin")
case (_, 0):
    print("(\(somePoint.0), 0) is on the x-axis")
case (0, _):
    print("(0, \(somePoint.1)) is on the y-axis")
case (-2...2, -2...2):
    print("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
    print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
}
