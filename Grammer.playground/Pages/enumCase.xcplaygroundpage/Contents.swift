import UIKit
import Foundation

enum School {
    case elementary
    case middle
    case high
}

// , 로 case 생략가능
enum School {
    case elementry, middle, high
}

let yourSchool = School.high
print("yourSchool: \(yourSchool)")


// 값(first, second 등) 명시 가능
enum Grade: Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
print("yourGrade: \(yourGrade)")

// rawValue : case의 값에 접근
print("yourGrade: \(yourGrade.rawValue)")


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
