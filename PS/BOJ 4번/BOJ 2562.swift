import Foundation

var IntList : [Int] = []

for _ in 1...9 {
    IntList.append(Int(readLine()!)!)
}

if let maxValue = IntList.max() {
    print(maxValue)
    if let idx = IntList.firstIndex(of: maxValue) {
        print(idx+1)
    }
}
