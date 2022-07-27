import Foundation

// 유튜버(데이터) 모델 - struct / 구조체
struct YoutuberStruct {
    var name: String
    var subscriberCount: Int
}

var youtuber1 = YoutuberStruct(name: "유튜버1", subscriberCount: 9999)

var youtuber1Clone = youtuber1
youtuber1Clone.name = "유튜버1 복제"

print(youtuber1Clone.name)  // 유튜버1 복제
print(youtuber1.name)       // 유튜버1


class YoutuberClass {
    var name: String
    var subscriberCount: Int
    
    // 생성자 - 메모리에 올린다
    // init으로 매개변수를 가진 생성자 메소드를 만들어야 매개변수를 넣고 객체 생성가능
    init(name: String, subscriberCount: Int) {
        self.name = name
        self.subscriberCount = subscriberCount
    }
}

var youtuber2 = YoutuberClass(name: "유튜버2", subscriberCount: 9999)

var youtuber2Clone = youtuber2
youtuber2Clone.name = "유튜버2 복제"

print(youtuber2Clone.name)  // 유튜버2 복제
print(youtuber2.name)       // 유튜버2 복제
