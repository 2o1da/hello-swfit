import UIKit


// 1. Simple
let simpleClosure = {
 
}

simpleClosure()


// 2. code block
let exampleClosure = {
    print("Hello Swift!")
}

exampleClosure()


// 3. input parameter
let exampleClosure2: (String) -> Void = { name in
    print("Hello \(name)!")
//    return
}

exampleClosure2("다솔")

// 4. return
let exampleClosure3: (String) -> String = { name in
    let message = ("Hello \(name)~")
    return message + "ㅋㅋㅋ"
}

print(exampleClosure3("다솔"))

// 5. parameter
func exampleClosure4(message: String, closure: () -> Void) {
    print("함수에서 호출됨\(message)")
    closure()
}

exampleClosure4(message: "ㅎㅎㅎ", closure: {
    print("클로저에서 호출됨")
})

// 6. Trailing closure
// 인자가 여러 개 있고 closure가 인자 중에 제일 마지막이면
exampleClosure4(message: "ㅋㅋㅋ") {
    print("클로저에서 호출됨2")
}
