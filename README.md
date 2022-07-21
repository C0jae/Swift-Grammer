# Swift-문법
## 조건문 if, else
``` swift
// 다크모드 여부
var isDarkMode: Bool = true

if (isDarkMode == true) {
    print("다크모드 입니다.")
} else {
    print("다크모드가 아닙니다.")
}
```
* isDarkMode라는 Boolea 타입의 변수 선언 : 기본값 true

### == 생략
```swift
// Bool 타입은 == 생략가능
if (isDarkMode) {
    print("다크모드 입니다.")
} else {
    print("다크모드가 아닙니다.")
}
```
* Boolean 타입(true, false)는 조건문 작성시 == 를 생각할 수 있다.
  * if (isDarkMode) => if (true) => 조건문 실행
  * if (!isDarkMode) => if (false) => 조건문 실행 X

### 조건문 괄호(  ) 생략
```swift
// 조건문에 ( ) 생략가능
if isDarkMode {
    print("다크모드 입니다.")
} else {
    print("다크모드가 아닙니다.")
}
```

### 삼항연산
```swift
// 삼항연산자
var title: String = isDarkMode ? "다크모드 입니다." : "다크모드가 아닙니다."
print("title: \(title)")
```
* 삼항 연산자를 사용하게 되면 훨씬 간략하게 코드를 작성할 수 있다.

##
## forEach 반복문
