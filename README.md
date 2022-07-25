# Swift-문법
## 1. 조건문 if, else
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
## 2. forEach 반복문
### 기본 forEach문
``` swift
var myArray: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for item in myArray {
    print("item: \(item)")
}
```
* item에 myArray의 요소를 순서대로 하나씩 적용하여 해당 갯수만큼 진행

### where : 특정한 조건 부여
``` swift
// where: 특정한 조건 부여 가능
var myArray: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for item in myArray where item > 5 {
    print("5보다 큰 수: \(item)")
}

for item in myArray where item % 2 == 0 {
    print("짝수: \(item)")
}
```
* where을 사용하여 특정한 조건을 부여할 수 있다.
    * where item > 5 : 5보다 큰 수일경우만 적용
    * where item % 2 == 0 : 2로 나누어 떨어지는 경우만(짝수) 적용
##
## 3. enum case && swift case
### 기본 enum case문
``` swift
enum School {
    case elementary
    case middle
    case high
}
```
### ,로 case 생략 가능
``` swift
enum School {
    case elementry, middle, high
}

let yourSchool = School.high
print("yourSchool: \(yourSchool)")
```
* 출력
    * yourSchool: high

### 값 명시 가능
``` swift
enum Grade: Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
print("yourGrade: \(yourGrade)")

print("yourGrade: \(yourGrade.rawValue)")
```
* 출력
    * 1. yourGrade: second
    * 2. yourGrade: 2
* rawValue를 사용하면 값을 출력할 수 있다.

``` swift
enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    
    func getName() -> String {
        switch self {
        case .elementary(let name):
            return name
        case .middle(let name):
            return name
        case .high(let name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "iOS 중학교")
print("yourMiddleSchoolName: \(yourMiddleSchoolName)")
print("yourMiddleSchoolName: \(yourMiddleSchoolName.getName())")
```
* 직접 case에 해당하는 값을 부여할 수 있다.
    * ShoolDetail.middle(name: "iOS 중학교") => case middle에 속한 iOS 중학교
* 출력1 => yourMiddleSchoolName: middle(name: "iOS 중학교")
    * 해당 case와 값이 같이 출력
* 값만 출력하기 위해서는 getName() 함수를 이용한다.
    * 각 case에 속하는 값이 들어올 경우 return 내용을 작성
    * 출력2 => yourMiddleSchoolName: iOS 중학교
##
## for 반복문
``` swift
// 0부터 5까지
for i in 0 ... 5 {
    print(i)
}
// 0 1 2 3 4 5

// 0부터 4까지
for i in 0 ..< 5 {
    print(i)
}
// 0 1 2 3 4
```
* swift에서는 범위를 . 으로 설정한다.
    * 1 ... 10 => 1이상 10이하 => 10번
    * 1 ..< 10 => 1이상 10미만 => 9번

### 요소(i)가 필요없는 반복문
``` swift
var randomInts: [Int] = [Int]()

for _ in 0 ..< 6 {
    let randomNumber = Int.random(in: 1 ... 45)
    randomInts.append(randomNumber)
}

print(randomInts)
```
* 요소가 필요없이 순서만 필요한 경우(로또 번호뽑기 등) i 등의 요소 대신 _ 를 이용한다.
