import Foundation

var IntList : [Int] = []

for num in 1...30 {
    IntList.append(num)
}

for _ in 1...28 {
    if let checkmate = Int(readLine()!) {
        if let idx = IntList.firstIndex(of: checkmate) {
            IntList.remove(at: idx)
        }
    }
}

for residual in IntList {
    print(residual)
}
