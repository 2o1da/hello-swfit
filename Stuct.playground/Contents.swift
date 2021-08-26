import UIKit

/*
 let store1 = (x: 3, y: 5, name: "GS")
 let store2 = (x: 4, y: 6, name: "SE")
 let store3 = (x: 1, y: 7, name: "CU")
 
 
 func distance(current: (x: Int, y: Int), target: (x: Int, y: Int)) -> Double {
 let distanceX = Double(target.x - current.x)
 let distanceY = Double(target.y - current.y)
 let distance = sqrt(pow(distanceX, 2) + pow(distanceY, 2))
 return distance
 }
 
 func printClosestStore(currentLocation: (x: Int, y: Int), stores: [(x: Int, y: Int, name: String)]) {
 var closestStoreName = ""
 var closestStoreDistance = Double.infinity
 
 for store in stores {
 let distanceToStore = distance(current: currentLocation, target: (x: store.x, y: store.y))
 closestStoreDistance = min(distanceToStore, closestStoreDistance)
 if closestStoreDistance == distanceToStore {
 closestStoreName = store.name
 }
 }
 print("가장 가까운 매장은 \(closestStoreName)")
 }
 
 let myLocation = (x:2, y:7)
 let stores = [store1, store2, store3]
 
 printClosestStore(currentLocation: myLocation, stores: stores)
 */

struct Location {
    let x: Int
    let y: Int
}

struct Store {
    let loc: Location
    let name: String
    
    let deliveryRange = 2.0
    
    func isDeliverable(userLocation: Location) -> Bool {
        let distanceToStore = distance(current: userLocation, target: loc)
        return distanceToStore < deliveryRange
    }
}

let store1 = Store(loc: Location(x: 3, y: 5), name: "GS")
let store2 = Store(loc: Location(x: 4, y: 6), name: "SE")
let store3 = Store(loc: Location(x: 1, y: 7), name: "CU")


func distance(current: Location, target: Location) -> Double {
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(pow(distanceX, 2) + pow(distanceY, 2))
    return distance
}

func printClosestStore(currentLocation: Location, stores: [Store]) {
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity
    var isDeliverable = false
    
    for store in stores {
        let distanceToStore = distance(current: currentLocation, target: store.loc)
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        if closestStoreDistance == distanceToStore {
            closestStoreName = store.name
            isDeliverable = store.isDeliverable(userLocation: currentLocation)
        }
    }
    print("가장 가까운 매장은 \(closestStoreName), 배달 가능 여부 : \(isDeliverable)")
}

let myLocation = Location(x:2, y:7)
let stores = [store1, store2, store3]

printClosestStore(currentLocation: myLocation, stores: stores)



class PersonClass {
    var names: String
    var age: Int
    
    init(name: String, age: Int) {
        self.names = name
        self.age = age
    }
}

struct PersonStruct {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let pClass1 = PersonClass(name: "Jason", age: 5)
let pClass2 = pClass1
pClass2.names = "Hey"

pClass1.names
pClass2.names


var pStruct1 = PersonStruct(name: "Jason", age: 5)
var pStruct2 = pStruc t1
pStruct2.name = "Hey"

pStruct1.name
pStruct2.name



// 도전 과제
/*
 struct Lecture {
 let lectureName: String
 let teacherName: String
 let studentNumber: Int
 }
 
 let lecture1 = Lecture(lectureName: "IOS 초급", teacherName: "이준원", studentNumber: 300)
 let lecture2 = Lecture(lectureName: "IOS 중급", teacherName: "김다솔", studentNumber: 200)
 let lecture3 = Lecture(lectureName: "IOS 상급", teacherName: "김다솔", studentNumber: 100)
 
 let lectures = [lecture1, lecture2, lecture3]
 
 func printLectureName(lectures: [Lecture], teacherName: String) {
 //    var lectureName: String?
 //
 //    for lecture in lectures {
 //        if lecture.teacherName == teacherName {
 //            lectureName = lecture.lectureName
 //        }
 //    }
 //
 //    if let name = lectureName {
 //        print("강의명:\(name)")
 //    } else {
 //        print("강의가 존재하지 않습니다.")
 //    }
 
 // 같은 거 중에 제일 처음 나온 것을 반환
 let lectureName = lectures.first { lec -> Bool in
 return lec.teacherName == teacherName
 }?.lectureName ?? "기본값"
 
 print("강좌명:\(lectureName)")
 
 // &0 : lectures의 아이템
 let lectureName2 = lectures.first { $0.teacherName == teacherName }?.lectureName ?? "Default"
 
 print("강좌명:\(lectureName2)")
 }
 
 printLectureName(lectures: lectures, teacherName: "김다솔")
 */


/*
// CustomStringConvertible
struct Lecture : CustomStringConvertible {
    var description: String {
        return "Title:\(lectureName), Instructor:\(teacherName)"
    }
    
    let lectureName: String
    let teacherName: String
    let studentNumber: Int
}

let lecture1 = Lecture(lectureName: "IOS 초급", teacherName: "이준원", studentNumber: 300)
let lecture2 = Lecture(lectureName: "IOS 중급", teacherName: "김다솔", studentNumber: 200)
let lecture3 = Lecture(lectureName: "IOS 상급", teacherName: "김다솔", studentNumber: 100)

let lectures = [lecture1, lecture2, lecture3]

func printLectureName(lectures: [Lecture], teacherName: String) {
    //    var lectureName: String?
    //
    //    for lecture in lectures {
    //        if lecture.teacherName == teacherName {
    //            lectureName = lecture.lectureName
    //        }
    //    }
    //
    //    if let name = lectureName {
    //        print("강의명:\(name)")
    //    } else {
    //        print("강의가 존재하지 않습니다.")
    //    }
    
    
    // 같은 거 중에 제일 처음 나온 것을 반환
    let lectureName = lectures.first { lec -> Bool in
        return lec.teacherName == teacherName
    }?.lectureName ?? "기본값"
    
    print("강좌명:\(lectureName)")
    
    // &0 : lectures의 아이템
    let lectureName2 = lectures.first { $0.teacherName == teacherName }?.lectureName ?? "Default"
    
    print("강좌명:\(lectureName2)")
}

print(lecture3)
// Lecture(lectureName: "IOS 상급", teacherName: "김다솔", studentNumber: 100)
// Title:IOS 상급, Instructor:김다솔


struct Person {
    // stored properties
    var firstName: String {
        willSet {
            print("willSet: \(firstName) > \(newValue)")
        }
        
        // Observation
        didSet {
            print("didSet: \(oldValue) > \(firstName)")
        }
    }
    var lastName: String
    
    
    lazy var isPopular: Bool = {
        if fullName == "다쏠 킴" {
            return true
        } else {
            return false
        }
    }()
    
    // computed properties
    // read only, not let
    var fullName: String {
        get {
            return "\(firstName) \(lastName)"
        }
        
        set {
            if let firstName = newValue.components(separatedBy: " ").first {
                self.firstName = firstName
            }
            if let lastName = newValue.components(separatedBy: " ").last {
                self.lastName = lastName
            }
        }
    }
    
    var fullName1: String {
        return "\(firstName) \(lastName)"
    }
    
    func fullName2() -> String {
        return "\(firstName) \(lastName)"
    }

    // instance가 아닌 type property
    static let isAlien: Bool = false
}

var person1 = Person(firstName: "다솔", lastName: "김")

person1.firstName = "Dasol"
person1.lastName = "Kim"
person1.fullName

person1.fullName = "다쏠 킴"
print(person1.fullName)

// 타입 자체에 있는 프로퍼티
Person.isAlien

person1.isPopular

person1.fullName1
person1.fullName2()
*/


// Method
struct Lecture {
    var title: String
    var maxStudent: Int = 10
    var numOfRegisterd: Int = 0
    
    func remainSeats() -> Int {
        let remainSeats = maxStudent - numOfRegisterd
        return remainSeats
    }
    
    // Stored property 값을 변경하기 때문에 mutating을 사용해야 한다.
    mutating func register(_ num: Int) {
        numOfRegisterd += num
    }
    
    // Type property
    static let target: String = "Anybody want to learn."
    
    // Type method
    static func academyName() -> String {
        return "학원이름"
    }
}

var lec = Lecture(title: "IOS Basic")

lec.remainSeats()
lec.register(7)
lec.remainSeats()

Lecture.target
Lecture.academyName()



struct Math {
    static func abs(value: Int) -> Int {
        if value >= 0 {
            return value
        } else {
            return -value
        }
    }
}

Math.abs(value: -13)

extension Math {
    static func square(value: Int) -> Int {
        return value * value
    }
    
    static func half(value: Int) -> Int
    {
        return value / 2
    }
}

Math.square(value: 3)
Math.half(value: 21)


var value: Int = 10

extension Int {
    func square() -> Int {
        return self * self
    }
}

value.square()
