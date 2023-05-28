import Foundation

var residualList : [Int] = []

for _ in 1...10 {
    if let input = Int(readLine()!) {
        if residualList.contains(input%42) == false {
            residualList.append(input%42)
        }
    }
}

print(residualList.count)
