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
}

class StudentAthelete: Student {
    var minimumTrainingTime: Int = 2
    var trainingTime: Int = 0
    var sports: [String]
    
    init(firstName: String, lastName: String, sports: [String]) {
        self.sports = sports
        super.init(firstName2: firstName, lastName: lastName)
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
