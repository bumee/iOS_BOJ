import Foundation

let WhatNum = readLine()!.split(separator: " ").map{Int($0)!}[1]
let NumList = readLine()!.split(separator: " ").map{Int($0)!}
let Compared_List = NumList.filter{$0 < WhatNum}

for item in Compared_List {
    print(item)
}
