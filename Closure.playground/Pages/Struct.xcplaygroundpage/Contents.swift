import Foundation

/*
let store1 = (x: 3, y: 5, name: "GS")
let store2 = (x: 4, y: 6, name: "SEVENELEVEN")
let store3 = (x: 1, y: 7, name: "CU")

func distance(current: (x:Int, y:Int), target: (x: Int, y: Int)) -> Double {
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    
    return distance
}
*/

struct Location {
    let x: Int
    let y: Int
}

struct Store{
    let loc: Location
    let name: String
}

let store1 = (loc: Location(x: 3, y: 5), name: "GS")

