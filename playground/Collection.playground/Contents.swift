import UIKit

// declaration
var evenNumbers: [Int] = [2,4,6,8]
var oddNumbers: Array<Int> = [1,3,5,7]

evenNumbers.append(10)
evenNumbers.append(contentsOf: [12,14])
oddNumbers += [9,11,13]

oddNumbers.isEmpty

// count property
evenNumbers.count

// optional은 value가 있을 수도, 없을 수도
print(evenNumbers.first)
evenNumbers=[]
print(evenNumbers.first)

evenNumbers=[2]
if let firstElement = evenNumbers.first {
    print("First element is : \(firstElement)")
} else {
    print("Nothing")
}

oddNumbers.min()
oddNumbers.max()

oddNumbers[1]
oddNumbers[3]

oddNumbers
print(oddNumbers[0...3])


// method
oddNumbers.contains(2)
oddNumbers.insert(121, at: 0)
// oddNumbers.removeAll() // oddNumbers = []
oddNumbers.remove(at: 0)
oddNumbers

oddNumbers[0] = 121
oddNumbers

oddNumbers[0...2] = [1,2,1]
oddNumbers

oddNumbers.swapAt(1, 2)


for (index, value) in oddNumbers.enumerated() {
    print(index,"&",value)
}

// 특정 부분을 지우지 않고 나머지만 나타냄
oddNumbers
oddNumbers.dropFirst(3)
oddNumbers.dropLast(3)

// 특정 부분만 나타냄
oddNumbers.prefix(3)
oddNumbers.suffix(3)
oddNumbers



// Dictionary
var scoreDic: [String: Int] = ["A": 80, "B": 95, "C": 90]
var scoreDic2: Dictionary<String, Int> = ["A": 80, "B": 95, "C": 90]

scoreDic["B"]
scoreDic["D"] // nil

// Dictionary의 값을 반환할 때 optional이 있기 때문에 안정적으로 가져 오기 위해 optional binding을 사용한다
if let score = scoreDic["Z"] {
    print(score)
} else {
    // score 사용 불가
    print("Nothing")
}

scoreDic.isEmpty
scoreDic.count

// 수정
scoreDic["B"] = 100
scoreDic

// 추가
scoreDic["D"] = 75
scoreDic

// 삭제
scoreDic["D"] = nil
scoreDic


for (name, score) in scoreDic {
    print(name, " : ", score)
}


for key in scoreDic.keys {
    print(key)
}

for value in scoreDic.values {
    print(value)
}

// Dictionary는 순서가 없다.


var me: [String:String] = ["이름":"김다솔", "직업":"취준생", "도시":"경기도"]
me["도시"] = "부산"

func printNameAndCity(_ inputDic:[String:String]){
    if let name = inputDic["이름"], let city = inputDic["도시"] {
        print("이름은 \(name)이고 사는 곳은 \(city)입니다.")
    } else {
        print("Can not find")
    }
}

printNameAndCity(me)




// Set
var testArray: Array<Int> = [1, 2, 3, 1, 2]
var testSet: Set<Int> = [1, 2, 3, 1, 2]

testSet.isEmpty
testSet.count

testSet.contains(3)

testSet.insert(5)
testSet
testSet.remove(5)
testSet




// Closure
var multiplyClosure: (Int, Int) -> Int = { a, b in
    // $0 * $1
    return a * b
}

multiplyClosure(3, 7)


func operateTwoNum(a:Int, b:Int, c:(Int, Int)->Int) -> Int {
    let result = c(a, b)
    return result
}

operateTwoNum(a: 3, b: 7, c: multiplyClosure)

operateTwoNum(a: 3, b: 7, c: {a, b in
                return a + b}
)

print(operateTwoNum(a: 3, b: 7, c: {a, b in
                        return a + b}
))


// input만 있는 closure
let voidClosure: () -> Void = {
    print("IOS 개발자")
}

voidClosure
voidClosure()


// Capturing Values
var count = 0

let incrementer = {
    count += 1
}

for _ in 0...6{
    incrementer()
}
count


