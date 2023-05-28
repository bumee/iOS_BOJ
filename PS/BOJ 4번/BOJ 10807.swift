import Foundation

let Howmany = Int(readLine()!)!
var IntList = readLine()!.split(separator: " ")
let whatNum = readLine()!

print(IntList.filter{$0 == whatNum}.count)
