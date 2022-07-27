//: [Previous](@previous)

import Foundation

// 옵셔널이란?
// 값이 있는지 없는지 모른다.

var someVariable: Int? = nil
// var someVariable: Int = nil 는 불가

if someVariable == nil {
    someVariable = 90
}
// optional(90)

// 언래핑이랑 감싸져있는(옵셔널)것을 벗기는 것
// if let 이용
if otherVariable == someVariable {
    print("언래핑 되었다., otherVariable: \(otherVariable)")
} else {
    print("값이 없다.")
}

// guard let 이용
guard let theOtherVariable == someVariable else { return }
print("언래핑 되었다. theOtherVariable: \(theOtherVariable)")
