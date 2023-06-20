import Foundation

let howMany = Int(readLine()!)!
if let nums = readLine() {
    var answer = 0
    for num in nums {
        answer += Int(String(num))!
    }
    print(answer)
}



