import Foundation

let How = readLine()!.split(separator: " ").map{Int($0)!}
let HowManyBall = How[0]
let HowManyChange = How[1]

var BallList : [Int] = []

for idx in 1...HowManyBall {
    BallList.append(idx)
}

for _ in 0..<HowManyChange {
    let Value = readLine()!.split(separator: " ").map{Int($0)!-1}
    let temp = BallList[Value[0]]
    BallList[Value[0]] = BallList[Value[1]]
    BallList[Value[1]] = temp
}

for item in BallList {
    print(item)
}

