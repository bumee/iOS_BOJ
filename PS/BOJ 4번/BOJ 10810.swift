import Foundation

let input = readLine()!.split(separator: " ").map {Int($0)!}
let BasketNum = input[0]
let PushNum = input[1]

var BallList : [Int] = []
for _ in 0..<BasketNum {
    BallList.append(0)
}
for _ in 0..<PushNum {
    let BallInfoList = readLine()!.split(separator: " ").map{Int($0)!}
    let startidx = BallInfoList[0]
    let finalidx = BallInfoList[1]
    let WhatNumBall = BallInfoList[2]
    
    for idx in startidx-1...finalidx-1 {
        BallList[idx] = WhatNumBall
    }
}
for item in BallList {
    print(item)
}
