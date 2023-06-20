import Foundation

let HowManyTest = Int(readLine()!)!

for idx in 0..<HowManyTest {
    if let word = readLine() {
        let first = word[word.startIndex]
        let end = word[word.index(before: word.endIndex)]
        print(String(first)+String(end))
    }
}
