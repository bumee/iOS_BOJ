import Foundation

let Garbage = Int(readLine()!)!

let IntList = readLine()!.split(separator:" ").map{Int($0)!}

print(String(IntList.min()!)+" "+String(IntList.max()!))
