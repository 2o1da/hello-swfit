import UIKit

var greeting = "Hello, playground"

var name:String = "Joon"
var dogName:String = "Mozzi"

// Optional 박스
var carName:String? = "Tesla"
carName = nil
carName = "Benz"

var favoriteMoiveStar:String? = nil

// optional int
let num = Int ("10십") // 변환 실패해서 들어가지 않으면 nil

// Forced unwrapping (!) > 억지로 박스 까기
// Optional binding (if let) > 부드럽게 박스 까기 1
// Optional binding (guard) > 부드럽게 박스 까기 2
// Nil coalescing > 박스 깠더니, 값이 없으면 디폴트 값 주기


print(carName)
print(carName!)


// carName에 value가 존재하면 unwrappedCarName에 할당
if var unwrappedCarName = carName{
    print(unwrappedCarName)
}else { // nil 일 때
    print("Car name doen not exist.")
}

func printParsedInt(from:String){
    if let parsedInt = Int(from){
        print(parsedInt)
        
        // Cycliomatic Complexity
        
    }else{
        print("Int로 컨버팅되지 않음.")
    }
}

printParsedInt(from: "100")
printParsedInt(from: "백")


func printParsedInt2(from:String){
    guard let parsedInt = Int(from) else {
        // optional value 없으면
        print("Int로 컨버팅되지 않음2.")
        return
    }
    // optional value 있으면
    print(parsedInt)
}


printParsedInt2(from: "21")
printParsedInt2(from: "이십일")


// ?? : carName이 nil이면 "BMW"를 할당
carName = "KIA"
let myCarName:String = carName ?? "BMW"



var favoriteFood: String? // = nil 과 동일

//favoriteFood = nil

if let foodName = favoriteFood {
    print(foodName)
}else{
    print("nil 입니다.")
}

func sayName(_ input:String?){
    guard let name = input else {
        print("The name does not exist.")
        return
    }
    print("The name is \(name).")
}

sayName("김다솔")
sayName(nil)
