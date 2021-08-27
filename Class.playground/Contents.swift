import UIKit

struct PersonStruct {
    // stored property
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName2: String) {
        self.firstName = firstName
        lastName = lastName2
    }
    
    // computed property
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    // self is immutable
    mutating func uppercaseName(){
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

class PersonClass {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName2: String) {
        self.firstName = firstName
        lastName = lastName2
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    // class에서는 mutating을 사용하지 않는다.
    func uppercaseName(){
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

var personStruct1 = PersonStruct(firstName: "Dasol", lastName2: "Kim")
var personStruct2 = personStruct1

var personClass1 = PersonClass(firstName: "Dasol", lastName2: "Kim")
var personClass2 = personClass1

personStruct2.firstName = "Solda"
personStruct1.fullName
personStruct2.fullName

personClass2.firstName = "Solda"
personClass1.fullName
personClass2.fullName

personClass2 = PersonClass(firstName: "DS", lastName2: "K")
personClass1.fullName
personClass2.fullName

personClass1 = personClass2
personClass1.fullName
personClass2.fullName

/*
struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName2: String, lastName: String) {
        firstName = firstName2
        self.lastName = lastName
    }
    
    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

// 학생은 사람이다. 역은 성립하지 않는다.
class Student: Person{
    var grades: [Grade] = []
    
//    var firstName: String
//    var lastName: String
//
//    init(firstName2: String, lastName: String) {
//        firstName = firstName2
//        self.lastName = lastName
//    }
//
//    func printMyName() {
//        print("My name is \(firstName) \(lastName)")
//    }
}

let person1 = Person(firstName2: "Solda", lastName: "Kim")
let student1 = Student(firstName2: "Dasol", lastName: "Kim")
person1.printMyName()
student1.printMyName()

let math = Grade(letter: "B", points: 85, credits: 3.3)
let history = Grade(letter: "A", points: 95, credits: 4.3)

student1.grades.append(math)
student1.grades.append(history)


class StudentAthelete: Student {
    var minimumTrainingTime: Int = 2
    var trainingTime: Int = 0
    
    func train() {
        trainingTime += 1
    }
}

class FootballPlayer: StudentAthelete {
    var footballTeam = "FC Swift"
    
    override func train() {
        trainingTime += 2
    }
}

// Person > Student > StudentAthelete > FootballPlayer

var athelet1 = StudentAthelete(firstName2: "David", lastName: "Silva")
var athelet2 = FootballPlayer(firstName2: "흥민", lastName: "손")

athelet1.firstName
athelet2.firstName

athelet1.grades.append(math)
athelet2.grades.append(math)

athelet1.minimumTrainingTime
athelet2.minimumTrainingTime

athelet2.footballTeam

athelet1.train()
athelet2.train()

athelet1.trainingTime
athelet2.trainingTime

// Uppercasing
athelet1 = athelet2 as StudentAthelete
athelet1.train()
athelet1.trainingTime
// athelet1.footballTeam // ERROR

// Downcasing
if let silva = athelet1 as? FootballPlayer {
    print("Team : \(silva.footballTeam)")
}
*/


struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName2: String, lastName: String) {
        firstName = firstName2
        self.lastName = lastName
    }
    
    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

class Student: Person{
    var grades: [Grade] = []
    
    // 주 생성자 : Degignated Initialization
    override init(firstName2: String, lastName: String) {
        super.init(firstName2: firstName2, lastName: lastName)
    }
    
    convenience init(student: Student) {
        self.init(firstName2: student.firstName, lastName: student.lastName )
    }
}

class StudentAthelete: Student {
    var minimumTrainingTime: Int = 2
    var trainingTime: Int = 0
    var sports: [String]
    
    init(firstName: String, lastName: String, sports: [String]) {
        // Phase 1
        self.sports = sports
        super.init(firstName2: firstName, lastName: lastName)
        
        // Phase 2
        self.train() // Phase 1 에서 사용 불가
    }
    
    // Convenience Initialization
    // 생성자가 커지는 경우에 간단하게 만드는 방법
    convenience init(name: String) {
        self.init(firstName: name, lastName: "", sports: [])
    }

    
    func train() {
        trainingTime += 1
    }
}

class FootballPlayer: StudentAthelete {
    var footballTeam = "FC Swift"
    
    override func train() {
        trainingTime += 2
    }
}

var student1 = Student(firstName2: "Dasol", lastName: "Kim")
var student2 = StudentAthelete(firstName: "Solda", lastName: "Kim", sports: ["Football"])

var student3 = StudentAthelete(name:"Messi")
print(student3.sports)


var to: Int! = Int("21")
print(to+1)


class Class {
    var count: Int = 0
}

var class1 = Class()
var class2 = class1
var class3 = class1

class3.count = 2
class1.count
class2.count
class3.count

//var car: String? = "K5"
//
//if let unwrapped = car {
//    print(unwrapped)
//} else {
//    print(unwrapped) // ERROR
//}
//print(unwrapped) // ERROR

class Vehicle {
    // final을 붙이면 재정의 불가
//    final var currentSpeed:Double = 0.0
    var currentSpeed:Double = 0.0
    var ddescription: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        print("speaker on")
    }
}

class Bicycle : Vehicle {
    var hasBasket = false
}

class Train: Vehicle {
    override func makeNoise() {
        // super class에 정의된 method
        super.makeNoise()
        print("choo choo")
    }
}

var bicycle1 = Bicycle()
bicycle1.currentSpeed
bicycle1.currentSpeed = 15.0
bicycle1.currentSpeed

let train1 = Train()
train1.makeNoise()
 

class Car: Vehicle {
    var gear = 1
    override var ddescription: String {
        return super.ddescription + " in gear \(gear)"
    }
}

// 슈퍼클래스의 프로퍼티는 서브 클래스에서 재정의 가능
let car = Car()
car.currentSpeed = 30.0
car.gear = 2
print(car.ddescription)

class AutomaticCar : Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10) + 2
        }
    }
}

let automatic1 = AutomaticCar()
automatic1.currentSpeed = 35.0
print("AutomaticCar:\(automatic1.ddescription)")


func guradTest(value: Int?) {
    guard let item = value else { return }
    print(item)
}

guradTest(value: nil)



enum CompassPoint {
    case north, south
    case east
    case west
}

var direction = CompassPoint.east
// 컴파일러가 direction 변수를 CompassPoint 열거형 타입이란 걸 추론하기 때문에
direction = .south

switch direction {
case .north:
    print("북")
case .south:
    print("남")
default:
    print("?")
}

// 열거형에 원시값을 갖게 하면?
enum CompassPoint2: String{
    case north = "북", south = "남쪽"
    case east = "동"
    case west = "서"
}


var direction2 = CompassPoint2.south

switch direction2 {
case .north:
    print(direction2.rawValue)
case .south:
    print(direction2.rawValue)
default:
    print("?")
}


var direction3 = CompassPoint2(rawValue: "남쪽") // 열거형 항목

enum PhoneError {
    case unknown
    case batteryLow(String)
}

let error = PhoneError.batteryLow("배터리가 부족합니다.")

switch error {
case .batteryLow(let message):
    print(message)
case .unknown:
    print("알 수 없음.")
}




// 옵셔널 체이닝
struct Developer {
    let name: String
}

struct Company {
    let name: String
    var dev: Developer?
}

var developer1 = Developer(name: "Dasol")
var company1 = Company(name: "SOLDA", dev: developer1)
print(company1)
print(company1.dev)
print(company1.dev?.name)
print(company1.dev!.name)


// try-catch
enum PhoneError2: Error {
    case unknown
    case batteryLow(batterLevel: Int)
}

//throw PhoneError2.batteryLow(batterLevel: 20)

func checkPhoneBatteryStatus(batteryLevel: Int) throws -> String {
    guard batteryLevel != -1 else { throw PhoneError2.unknown }
    guard batteryLevel > 20 else { throw PhoneError2.batteryLow(batterLevel: batteryLevel) }
    return "배터리 상태가 정상입니다."
}

do {
    try checkPhoneBatteryStatus(batteryLevel: 17)
    
} catch PhoneError2.unknown {
    print("알 수 없는 에러입니다.")
} catch PhoneError2.batteryLow(let batteryLevel) {
    print("배터리 부족 : \(batteryLevel)")
} catch {
    print("그 외 오류 발생 : \(error)")
}

// try? 에러면 nil을 반환한다, 에러가 아니면 Optional을 반환한다
let status = try? checkPhoneBatteryStatus(batteryLevel: 20)
print(status)

// try! throwing 함수가 에러 발생하지 않을 거라고 확신할 때 사용, 에러 발생하면 강제 종료
let status2 = try! checkPhoneBatteryStatus(batteryLevel: 21)
print(status2)


//let hello = { () -> () in
//    print("Hello")
//}
let hello = {
    print("Hello")
}

hello()

let hello2 = { (name: String) -> String in
    return "Hello, \(name)"
}

//hello2(name: "DASOL") // ERROR
hello2("DASOL")

// 함수 파라미터 타입
func doSomething(closure: () -> ()) {
    closure()
}

doSomething(closure: hello)
doSomething(closure: { () -> () in
    print("안녕")
//    return
})
doSomething() {
    print("안녕2")
}
doSomething {
    print("안녕3")
}

// 리턴 타입
func doSomething2() -> () -> () {
    return { () -> () in
        print("안녕하세요")
    }
}

doSomething2()()


func doSomething3(success: () -> (), fail: () -> ()) {
    
}

doSomething3 {
// 첫번째 매개변수 레이블 생략
} fail: {
    
}

func doSomething0(closure: (Int, Int, Int) -> Int) {
    closure(1, 2, 3)
}

doSomething0(closure: {(a, b, c) in
    return a+b+c
})

// 약식인수 : 매개변수 이름 대신하여 사용
doSomething0(closure: {
    return $0 + $1 + $2
})

// 단일 return문일 때만 return 생략 가능
doSomething0(closure: {
    //print("Hello")
    $0 + $1 + $2
})

doSomething0() {
    $0+$1+$2
}

// 단 하나의 클로저만 매개변수로 전달할 시
doSomething0 {
    $0+$1+$2
}

