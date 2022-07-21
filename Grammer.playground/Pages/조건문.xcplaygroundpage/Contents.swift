import UIKit
import Darwin

// 다크모드 여부
var isDarkMode: Bool = true

if (isDarkMode == true) {
    print("다크모드 입니다.")
} else {
    print("다크모드가 아닙니다.")
}

// Bool 타입은 == 생략가능
if (isDarkMode) {
    print("다크모드 입니다.")
} else {
    print("다크모드가 아닙니다.")
}

// 조건문에 ( ) 생략 가능
if isDarkMode {
    print("다크모드 입니다.")
} else {
    print("다크모드가 아닙니다.")
}

// 삼항연산자 => 훨씬 간략하게 표현가능
var title: String = isDarkMode ? "다크모드 입니다." : "다크모드가 아닙니다."
print("title: \(title)")
