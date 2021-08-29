import UIKit

// 컨테이너 내부의 기존 데이러틑 변형하여 새로운 데이터 생성
let numbers = [0,1,2,3]
let mapArray = numbers.map { (number) -> Int in
    return number * 2
}
print("map \(mapArray)")


let intArray = [10,5,20,13,7]
let filterArray = intArray.filter { $0 > 9 } // true만 추출
print("filter \(filterArray)")


let someArray = [1,2,3,4,5]
let reduceResult = someArray.reduce(100) { // 초기값
    (result: Int, element: Int) -> Int in // result는 누적값, element는 배열의 요소 각각
    print("\(result) + \(element)")
    return result + element
}
print("reduce \(reduceResult)")

let reduceResult2 = someArray.reduce(0) { $0 + $1 }
print("reduce2 \(reduceResult2)")
