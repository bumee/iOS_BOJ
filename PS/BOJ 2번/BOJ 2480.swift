import Foundation

///너무 멍청하게 생각했다.. 복잡하게 생각하지 말고 간단하게도 생각해보자!

let dices = readLine()!.split(separator: " ").map{Int(String($0))!}
let a = dices[0]
let b = dices[1]
let c = dices[2]

func max(x: Int, y: Int) -> Int {
    return x > y ? x : y
}

if a == b && b == c {
    print(10000+1000*a)
}
else if a == b || a == c {
    print(1000+100*a)
}
else if b == c {
    print(1000+100*b)
}
else {
    print(100*max(x: max(x: a, y: b), y: c))
}
