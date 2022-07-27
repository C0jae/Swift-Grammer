//: [Previous](@previous)

import Foundation

// 0부터 5까지
for i in 0 ... 5 {
    print(i)
}

// 0부터 4까지
for i in 0 ..< 5 {
    print(i)
}


var randomInts: [Int] = [Int]()

// 요소(i)가 필요없는 반복문
for _ in 0 ..< 6 {
    let randomNumber = Int.random(in: 1 ... 45)
    randomInts.append(randomNumber)
}

print(randomInts)
