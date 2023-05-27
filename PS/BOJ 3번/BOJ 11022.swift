import Foundation

let Howmany = Int(readLine()!)!
var CalList : [Int] = []
var case_idx = 1
var idx = 0

for _ in 0..<Howmany {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    CalList.append(ints[0])
    CalList.append(ints[1])
}

while idx < CalList.count {
    let a = CalList[idx]
    let b = CalList[idx+1]
    print("Case #"+String(case_idx)+": "+String(a)+" + "+String(b)+" = "+String(a+b))
    case_idx += 1
    idx += 2
}
