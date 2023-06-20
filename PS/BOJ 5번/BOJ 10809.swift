import Foundation

let alphabet = "abcdefghijklmnopqrstuvwxyz"
let s = readLine()!.map { $0 }
let answer = alphabet.map { s.firstIndex(of: $0) ?? -1 }
answer.forEach { print($0, terminator: " ") }
