import UIKit
import Foundation

/*
 var greeting = "Hello, playground"
 
 let value = arc4random_uniform(100)
 print("==> \(value)")
 
 
 // Tuple
 let coordinates = (4, 6, 9)
 let x = coordinates.0
 let y = coordinates.1
 let z = coordinates.2
 
 let coordinatesNamed = (x:2,y:3)
 let x2=coordinatesNamed.x
 let y2=coordinatesNamed.y
 
 let (x3, y3) = coordinatesNamed
 x3
 print(y3)
 
 // Boolean
 let yes = true // let : constant
 let isFourGreaterThanFive = 4>5 // false
 
 if isFourGreaterThanFive {
 print("참")
 }
 else {
 print("거짓")
 }
 
 let greetingMessage:String
 if true{
 greetingMessage="Hello"
 }else{
 greetingMessage="Bye"
 }
 print(greetingMessage)
 
 let greetingMessage2:String = isFourGreaterThanFive ? "반가워" : "잘가"
 print(greetingMessage2)
 
 
 var hours = 50
 let payPerHour=10000
 var salary=0
 
 if hours>40{
 let extraHours=hours-40
 salary+=extraHours*payPerHour*2
 hours-=extraHours
 }
 
 salary+=hours*payPerHour
 print(salary)
 
 
 var i = 10
 repeat {
 print(i)
 i += 1
 } while i < 10
 
 
 let closedRange = 0...10 // 0 ~ 10
 let halfClosedRange = 0..<10 // 0 ~ 9
 
 var sum = 0
 for i in closedRange{
 print("\(i)")
 sum+=i
 }
 print(sum)
 
 
 var sinValue:CGFloat=0
 for i in closedRange{
 sinValue=sin(CGFloat.pi/4*CGFloat(i))
 }
 
 // 에러 방지로 _ 사용
 for _ in halfClosedRange{
 print("안녕")
 }
 
 
 for i in closedRange where i%2==0{
 print(i)
 }
 
 for i in closedRange {
 if i == 3 {
 continue
 }
 
 print(i)
 }
 
 for i in closedRange {
 for j in closedRange {
 print("\(i) * \(j) = \(i*j)")
 }
 }
 
 let num = 10
 switch num {
 case 0:
 print("1 입니다.")
 case closedRange:
 print("0과 10 사이입니다.")
 case 10:
 print("10 입니다.")
 default:
 print("나머지 입니다.")
 }
 
 let pet = "dog"
 switch pet{
 case "dog","cat","bird":
 print("펫이 맞습니다.")
 default:
 print("펫이 아닙니다.")
 }
 
 switch num {
 case _ where num%2==0:
 print("짝수")
 default:
 print("홀수")
 }
 
 
 let coordinate = (x:10,y:11)
 switch coordinate{
 case (0,0):
 print("원점")
 case (_,0):
 print("x축 \(coordinate.x)")
 case (0,let temp):
 print("y축 \(temp)")
 case (let a,let b) where a==b:
 print("\(a), \(b)")
 default:
 print("좌표 어딘가")
 
 }
 */

let num=22
switch num {
case num where num%2==0:
    print("짝수 > \(num)")
default:
    print("홀수 > \(num)")
}

func printTotalPrice(price:Int, count:Int) {
    print("Total Price : \(price * count)")
}

printTotalPrice(price: 15, count: 5)

// underscore
func printTotalPrice2(_ price:Int, 갯수1 count:Int){
    print("Total Price : \(price * count)")
}

printTotalPrice2(3, 갯수1:7)

func printTotalPriceDefault(가격 price: Int = 1500, _ count: Int) {
    print("Total Price : \(price * count)")
}

printTotalPriceDefault(7)

func totalPrice(price:Int,count:Int) -> Int {
    let total:Int=price*count
    return total
}

let calculatedPrice = totalPrice(price: 10000, count: 13)
print(calculatedPrice)


func printName(First firstName:String, Second lastName:String){
    print("My name is \(firstName) \(lastName)")
}

printName(First: "다솔", Second: "김")

func printName3(_ firstName:String, _ lastName:String) -> String {
    return firstName + " " + lastName
}

print(printName3("다솔","김"))


//func printTotalPrice(price:Int, count:Int) {
//    print("Total Price : \(price * count)")
//}

func printTotalPrice(price:Double, count:Double){
    print("Total Price : \(price * count)")
}

func printTotalPrice(가격:Int, 갯수:Int){
    print("Total Price : \(가격 * 갯수)")
}

// 파라미터는 복사되어 들어오는데 constant이다
// 파라미터로 들어오는 변수를 변경하고 싶은 경우 copy in/out을 해야 한다
var value = 3
func incrementAndPrint(_ value:inout Int){
    value += 1
    print(value)
}

incrementAndPrint(&value)

// Function as parameter
func add(_ a:Int, _ b:Int) -> Int {
    return a+b
}

func subtract(_ a:Int, _ b:Int) -> Int {
    return a - b
}

var function=add
function(3,5)

var function2=subtract(7, 2)

func exam(_ f:(Int,Int)->Int, _ a:Int, _ b:Int){
    let result = f(a,b)
    print(result)
}

exam(add,3,7)
