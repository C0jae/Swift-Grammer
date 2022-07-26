import UIKit

var myArray: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for item in myArray {
    print("item: \(item)")
}

// where: 특정한 조건 부여 가능
for item in myArray where item > 5 {
    print("5보다 큰 수: \(item)")
}

for item in myArray where item % 2 == 0 {
    print("짝수: \(item)")
}
